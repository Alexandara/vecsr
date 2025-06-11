import airsim
import numpy as np
import cv2
import os
import logging

from simulator import Simulator
from mock_image_processor import detected_front_collision

class AirSimSimulator(Simulator):
    def __init__(self):
        super().__init__()
        self.direction = "posx" # can be facing positive x, negative x, positive y, or negative y
        self.collision_detected = False
        # connect to the AirSim simulator
        self.client = airsim.MultirotorClient()
        self.client.confirmConnection()
        self.client.enableApiControl(True)
        self.client.armDisarm(True)
        self.imagenum = 0
        self.last_move = []

    def get_state(self, rooms=None):
        scasp_facts = []
        state = self.client.getMultirotorState()

        # Collision data
        # Note: although there is more data, right now we are considering any collisions a failure state
        scasp_facts.append([("has_collided", state.collision.has_collided)])

        # GPS Location
        scasp_facts.append([("curr_gps_altitude", str(round(state.gps_location.altitude)))])
        scasp_facts.append([("curr_longitude", str(round(state.gps_location.longitude,5)))])
        scasp_facts.append([("curr_latitude", str(round(state.gps_location.longitude, 3)))])

        # Kinematics
        scasp_facts.append([("curr_angular_acceleration_x",
                             str(round(state.kinematics_estimated.angular_acceleration.x_val, 1)))])
        scasp_facts.append([("curr_angular_acceleration_y",
                             str(round(state.kinematics_estimated.angular_acceleration.y_val, 1)))])
        scasp_facts.append([("curr_angular_acceleration_z",
                             str(round(state.kinematics_estimated.angular_acceleration.z_val, 1)))])
        scasp_facts.append([("curr_angular_velocity_x",
                             str(round(state.kinematics_estimated.angular_velocity.x_val, 1)))])
        scasp_facts.append([("curr_angular_velocity_y",
                             str(round(state.kinematics_estimated.angular_velocity.y_val, 1)))])
        scasp_facts.append([("curr_angular_velocity_z",
                             str(round(state.kinematics_estimated.angular_velocity.z_val, 1)))])

        scasp_facts.append([("curr_linear_acceleration_x",
                             str(round(state.kinematics_estimated.linear_acceleration.x_val, 1)))])
        scasp_facts.append([("curr_linear_acceleration_y",
                             str(round(state.kinematics_estimated.linear_acceleration.y_val, 1)))])
        scasp_facts.append([("curr_linear_acceleration_z",
                             str(round(state.kinematics_estimated.linear_acceleration.z_val, 1)))])
        scasp_facts.append([("curr_linear_velocity_x",
                             str(round(state.kinematics_estimated.linear_velocity.x_val, 1)))])
        scasp_facts.append([("curr_linear_velocity_y",
                             str(round(state.kinematics_estimated.linear_velocity.y_val, 1)))])
        scasp_facts.append([("curr_linear_velocity_z",
                             str(round(state.kinematics_estimated.linear_velocity.z_val, 1)))])

        scasp_facts.append([("curr_orientation_x", str(round(state.kinematics_estimated.orientation.x_val)))])
        scasp_facts.append([("curr_orientation_y", str(round(state.kinematics_estimated.orientation.y_val)))])
        scasp_facts.append([("curr_orientation_z", str(round(state.kinematics_estimated.orientation.z_val)))])

        scasp_facts.append([("curr_x", str(round(state.kinematics_estimated.position.x_val)))])
        scasp_facts.append([("curr_y", str(round(state.kinematics_estimated.position.y_val)))])
        scasp_facts.append([("curr_z", str(round(state.kinematics_estimated.position.z_val)))])

        # Landed
        if state.landed_state:
            scasp_facts.append([("is_landed", "false")])
        else:
            scasp_facts.append([("is_landed", "true")])

        # Collision detection
        if self.collision_detected:
            scasp_facts.append([("collision_detected", "true")])
        else:
            scasp_facts.append([("collision_detected", "false")])

        # Direction
        scasp_facts.append([("facing_direction", self.direction)])

        # Last Move
        scasp_facts.append(self.last_move)

        return scasp_facts

    def take_action(self, action):
        p, n = self.get_images()
        self.save_images(p, n)
        velocity = 5
        self.client.confirmConnection()
        self.client.enableApiControl(True)
        if action[0] == "takeoff":
            self.last_move = [("last_move", "takeoff")]
            self.client.takeoffAsync().join()
            position = self.client.getMultirotorState().kinematics_estimated.position
            self.client.moveToPositionAsync(position.x_val, position.y_val, -10, velocity).join()
        elif action[0] == "move" and "forward" in action[1]:
            self.last_move = [("last_move", "move", "forward")]
            position = self.client.getMultirotorState().kinematics_estimated.position
            if self.direction == "posx":
                self.client.moveToPositionAsync(position.x_val + 5, position.y_val, position.z_val, velocity).join()
            elif self.direction == "negx":
                self.client.moveToPositionAsync(position.x_val - 5, position.y_val, position.z_val, velocity).join()
            elif self.direction == "posy":
                self.client.moveToPositionAsync(position.x_val, position.y_val + 5, position.z_val, velocity).join()
            elif self.direction == "negy":
                self.client.moveToPositionAsync(position.x_val, position.y_val - 5, position.z_val, velocity).join()
        elif action[0] == "rotate" and "right" in action[1]:
            self.last_move = [("last_move", "rotate", "right")]
            if self.direction == "posx":
                self.client.rotateToYawAsync(90).join()
                self.direction = "posy"
            elif self.direction == "negx":
                self.client.rotateToYawAsync(270).join()
                self.direction = "negy"
            elif self.direction == "posy":
                self.client.rotateToYawAsync(180).join()
                self.direction = "negx"
            elif self.direction == "negy":
                self.client.rotateToYawAsync(0).join()
                self.direction = "posx"
        elif action[0] == "rotate" and "left" in action[1]:
            self.last_move = [("last_move", "rotate", "left")]
            if self.direction == "posx":
                self.client.rotateToYawAsync(270).join()
                self.direction = "negy"
            elif self.direction == "negx":
                self.client.rotateToYawAsync(90).join()
                self.direction = "posy"
            elif self.direction == "posy":
                self.client.rotateToYawAsync(0).join()
                self.direction = "posx"
            elif self.direction == "negy":
                self.client.rotateToYawAsync(180).join()
                self.direction = "negx"
        else:
            logging.warn("Invalid action taken.")
        self.collision_detected = detected_front_collision()

    @staticmethod
    def which_simulator():
        return "AirSim"

    def get_images(self):
        responses = self.client.simGetImages([
            airsim.ImageRequest("1", airsim.ImageType.Scene),
            airsim.ImageRequest("1", airsim.ImageType.Scene, False, False)])
        png_image = responses[0].image_data_uint8
        img1d = np.fromstring(responses[1].image_data_uint8, dtype=np.uint8)  # get numpy array
        np_image = img1d.reshape(responses[1].height, responses[1].width, 3)
        return png_image, np_image

    def save_images(self, png_image, np_image=None):
        airsim.write_file(os.path.normpath('airsim_images\\image' + str(self.imagenum) + '.png'), png_image)
        if np_image is not None:
            cv2.imwrite(os.path.normpath('airsim_images\\np_image' + str(self.imagenum) + '.png'), np_image)
        self.imagenum = self.imagenum + 1
