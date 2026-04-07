import asyncio
import numpy as np
import os
import logging
import math
import cv2
from projectairsim import ProjectAirSimClient, Drone, World
from projectairsim.types import ImageType
from projectairsim.utils import unpack_image

'''
This is just a list of events the default drone can currently sub to.
Copy pasted here from the terminal so it's easier to see.

INFO:The following topics can be subscribed to for robot 'Drone1':
INFO:    sensors["Chase"]["scene_camera"]
INFO:    sensors["Chase"]["scene_camera_info"]
INFO:    sensors["DownCamera"]["scene_camera"]
INFO:    sensors["DownCamera"]["scene_camera_info"]
INFO:    sensors["DownCamera"]["depth_camera"]
INFO:    sensors["DownCamera"]["depth_camera_info"]
INFO:    sensors["IMU1"]["imu_kinematics"]
INFO:    sensors["GPS"]["gps"]
INFO:    sensors["Barometer"]["barometer"]
INFO:    sensors["Magnetometer"]["magnetometer"]
INFO:    robot_info["actual_pose"]
INFO:    robot_info["collision_info"]
INFO:    robot_info["rotor_info"]
'''

class AirSimSimulator():
    def __init__(self):
        super().__init__()
        self.direction = "posx" # assumes bot spawns facing "rpy-deg": "0 0 0"
        self.collision_detected = False
        self.forward_collision_detected = False
        
        self.timestamp = 1
        self.last_image = 0
        
        self.client = ProjectAirSimClient()
        self.client.connect()
        
        # ensure whatever setup is in `./sim_config/` folder
        self.world = World(self.client, "scene_basic_drone.jsonc")
        self.drone = Drone(self.client, self.world, "Drone1")
        
        # chase as "front camera", can be replaced by whatever the drone's front camera is
        # but this one just has "chase" and "down" for now
        self.front_camera_name = "Chase"
        
        # use images dir (based on the gitignore)
        self.images_dir = os.path.join(os.getcwd(), "src/airsim_images")
        try:
            os.makedirs(self.images_dir)
        except OSError:
            if not os.path.isdir(self.images_dir):
                raise
        
        # subscribe to collision sensor
        try:
            self.client.subscribe(
                self.drone.robot_info["collision_info"],
                lambda _, data: self.collision_callback(data)
            )
            logging.info(f"Subscribed to collision sensor.")
        except Exception as e:
            logging.warning(f"Collision Subscription failed: {e}")

        self.drone.enable_api_control()
        self.drone.arm()
        self.last_move = [("last_move", "none")] # self.last_move = []
        
    def collision_callback(self, collision_info):
        # collision_info is a dict that gets passed whenever the drone touches anything
        # can be called multiple times per timestamp depending on UE game ticks
        # collision_info.keys() = ['time_stamp', 'object_name', 'segmentation_id', 'position', 'impact_point', 'normal', 'penetration_depth']
        
        self.collision_detected = True
        col_pos = collision_info.get('position', 'unknown')
        logging.debug(f"Collision detected at: {col_pos}")
    
    # called by anything that "solves" a collision
    def reset_collision(self):
        self.collision_detected = False
        logging.info(f"Collision resolved.")

    async def get_state(self, rooms=None):
        scasp_facts = []
        scasp_facts.append([("current_time", str(self.timestamp))])
        
        # get state dictionary from Project AirSim
        # https://github.com/iamaisim/ProjectAirSim/blob/main/docs/api.md
        # temporary until we do sensors / more logic stuff
        kinematics = self.drone.get_ground_truth_kinematics()
        
        pose = kinematics.get('pose', {})
        pos = pose.get('position', {'x': 0, 'y': 0, 'z': 0})
        ori = pose.get('orientation', {'w': 1, 'x': 0, 'y': 0, 'z': 0})
        
        twist = kinematics.get('twist', {})
        lin_vel = twist.get('linear', {'x': 0, 'y': 0, 'z': 0})
        ang_vel = twist.get('angular', {'x': 0, 'y': 0, 'z': 0})
        
        accels = kinematics.get('accels', {})
        lin_acc = accels.get('linear', {'x': 0, 'y': 0, 'z': 0})
        ang_acc = accels.get('angular', {'x': 0, 'y': 0, 'z': 0})
        
        # mapping to scasp
        scasp_facts.append([("curr_x", str(round(pos['x'])))])
        scasp_facts.append([("curr_y", str(round(pos['y'])))])
        scasp_facts.append([("curr_z", str(round(pos['z'])))])

        for axis in ['x', 'y', 'z']:
            scasp_facts.append([(f"curr_linear_velocity_{axis}", str(round(lin_vel[axis], 1)))])
            scasp_facts.append([(f"curr_linear_acceleration_{axis}", str(round(lin_acc[axis], 1)))])
            scasp_facts.append([(f"curr_angular_velocity_{axis}", str(round(ang_vel[axis], 1)))])
            scasp_facts.append([(f"curr_angular_acceleration_{axis}", str(round(ang_acc[axis], 1)))])
            
        scasp_facts.append([("curr_orientation_x", str(round(ori['x'])))])
        scasp_facts.append([("curr_orientation_y", str(round(ori['y'])))])
        scasp_facts.append([("curr_orientation_z", str(round(ori['z'])))])
        
        landed_state = self.drone.get_landed_state()
        is_landed = "true" if landed_state == 0 else "false" # 0 is landed
        scasp_facts.append([("is_landed", is_landed)])
        
        scasp_facts.append([("collision_detected", "true" if self.collision_detected else "false")])
        
        self.forward_collision_detected = await self.detect_forward_collision()
        scasp_facts.append([("forward_collision_detected", "true" if self.forward_collision_detected else "false")])
        
        scasp_facts.append([("facing_direction", self.direction)])
        scasp_facts.append(self.last_move)

        return scasp_facts

    async def take_action(self, action):
        self.timestamp += 1 
        velocity = 5.0
        
        kinematics = self.drone.get_ground_truth_kinematics()
        pose = kinematics.get('pose', {})
        pos = pose.get('position', {'x': 0, 'y': 0, 'z': 0})

        if action[0] == "takeoff":
            self.last_move = [("last_move", action[0])]
            task = await self.drone.takeoff_async()
            await task
            
            if self.collision_detected:
                self.reset_collision() # mark collision as solved

        elif action[0] == "move" and "forward" in action[1]:
            self.last_move = [("last_move", action[0], action[1])]
            dx, dy = 0, 0
            if self.direction == "posx": dx = 5
            elif self.direction == "negx": dx = -5
            elif self.direction == "posy": dy = 5
            elif self.direction == "negy": dy = -5
            
            # start the movement task
            task = await self.drone.move_to_position_async(
                pos['x'] + dx, pos['y'] + dy, pos['z'], velocity
            )
            
            # polling loop
            while not task.done():
                if self.collision_detected:
                    logging.info("Collision! Cancelling movement and backing up.")
                    
                    # stop current velocity and move back a bit
                    await self.drone.move_by_velocity_async(0, 0, 0, 0.1)
                    back_x = pos['x'] - (dx * 0.1)
                    back_y = pos['y'] - (dy * 0.1)
                    back_vel = velocity * 0.5
                    
                    task = await self.drone.move_to_position_async(
                        back_x, back_y, pos['z'], back_vel
                    )
                    await task
                    
                    break
                await asyncio.sleep(0.1)
                
            if not task.done():
                task.cancel() # Clean up the task if we broke early

        elif action[0] == "rotate":
            side = action[1] # "right" or "left"
            self.last_move = [("last_move", "rotate", side)]
            
            # yaw | 0 = North (+X), pi/2 = East (+Y), pi = South (-X), 3pi/2 = West (-Y)
            yaw_map = {"posx": 0.0, "posy": math.pi/2, "negx": math.pi, "negy": 3*math.pi/2}
            dirs = ["posx", "posy", "negx", "negy"]
            curr_idx = dirs.index(self.direction)
            
            if "right" in side:
                new_idx = (curr_idx + 1) % 4
            else:
                new_idx = (curr_idx - 1) % 4
                
            self.direction = dirs[new_idx]
            # yaw_control_mode: 0 = Angle, 1 = Rate
            # yaw_is_rate: False
            task = await self.drone.rotate_to_yaw_async(
                yaw=yaw_map[self.direction],
                timeout_sec=10,
                margin=0.1
            )
            await task
            if self.collision_detected:
                self.reset_collision() # mark collision as solved
        else:
            logging.warn("Invalid action taken.")
        
        if self.collision_detected:
            logging.info("Collision detected")
        else:
            logging.info("Collision not detected")
            
    async def detect_forward_collision(self):
        # dummy test refering to what the old CV collision did
        # can prob make this return the img too or use what it saved in the img folder
        # TODO actual CV
        await self.get_images() 
        return False
        
    async def get_images(self):
        """Capture image from Chase camera and save to images folder"""
        try:
            # get_state() is currently called more often / faster than take_action() so ignore if already captured
            if self.last_image >= self.timestamp:
                return
            
            # it returns extra data like file format w/h etc but we just need the img
            response = list(self.drone.get_images(self.front_camera_name, [ImageType.SCENE]).values())[0]
            filename = os.path.join(self.images_dir, f"image_{self.timestamp}.png")
            img = unpack_image(response)
            cv2.imwrite(filename, img)
            logging.info(f"Saved image to {filename}")
            self.last_image = self.timestamp
            
        except Exception as e:
            logging.error(f"Failed to get image: {e}")
    
    @staticmethod
    def which_simulator():
        return "AirSim"
    
    def __del__(self):
        self.client.disconnect()
        