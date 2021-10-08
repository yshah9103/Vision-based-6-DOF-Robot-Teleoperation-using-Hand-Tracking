# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "panda_hardware_interface;gazebo_ros_control;image_transport;franka_core_msgs;realtime_tools;roscpp;kdl_parser;tf_conversions;panda_sim_controllers;panda_sim_custom_action_server".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpanda_robot_hw_sim".split(';') if "-lpanda_robot_hw_sim" != "" else []
PROJECT_NAME = "panda_gazebo"
PROJECT_SPACE_DIR = "/home/ntnghia1999/dynamics_final/install"
PROJECT_VERSION = "1.0.0"
