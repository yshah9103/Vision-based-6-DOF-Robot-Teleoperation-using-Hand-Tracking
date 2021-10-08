#! /usr/bin/env python
import rospy
from sensor_msgs.msg import JointState
from franka_core_msgs.msg import JointCommand, RobotState,EndPointState
import numpy as np
from copy import deepcopy
from panda_robot import PandaArm
from std_msgs.msg import Float64MultiArray
import cv2
import keyboard
from geometry_msgs.msg import Twist
import sys, select, os
if os.name == 'nt':
  import msvcrt
else:
  import tty, termios

def getKey():
  # this function is used to get the key that is being pressed from the terminal
    if os.name == 'nt':
      if sys.versioninfo[0] >= 3:
        return msvcrt.getch().decode()
      else:
        return msvcrt.getch()

    tty.setraw(sys.stdin.fileno())
    rlist,a,b = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


def callback(data):
  # callback function that is called continuously
    global pose
    pose = data.data
    # print(pose)

if __name__ == '__main__':
    
    if os.name != 'nt':
        settings = termios.tcgetattr(sys.stdin)
    rospy.init_node("controller_node") # initialize the node
    rospy.Subscriber("chatter",Float64MultiArray,callback) # set the node as a subscriber
    r = PandaArm() # initialize the Panda Arm with the buil-in functions
    r.move_to_neutral() # The robot is moved to the neutral position when the function is executed
    pose,ori = r.ee_pose() # this function gives the position and the orientation of the end effector.
    a=r.get_gripper() # The gripper is initialized

    while True:
        pos = pose
        r.move_to_cartesian_pose(pos,ori) # this function moves the robot to the desired position and keep the orientation
        if getKey() == 'q': # open the gripper
            a.open()
        elif getKey() == 'w': # close the gripper
            a.grasp(0.04,100)

    pos,ori = r.ee_pose()
    print("done")
    rospy.spin()


