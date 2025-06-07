import airsim
import numpy as np
import cv2
import os
import pprint

from simulator import Simulator

class AirSimSimulator(Simulator):
    def __init__(self):
        super().__init__()
        # connect to the AirSim simulator
        self.client = airsim.MultirotorClient()
        self.client.confirmConnection()
        self.client.enableApiControl(True)
        self.client.armDisarm(True)

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
            scasp_facts.append([("is_landed", "true")])
        else:
            scasp_facts.append([("is_landed", "false")])

        return scasp_facts


    def take_action(self, action):
        pass

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
