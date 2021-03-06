## *********************************************************
##
## File autogenerated for the panda_joint_trajectory_action package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'upper': 'DEFAULT', 'lower': 'groups', 'srcline': 246, 'name': 'Default', 'parent': 0, 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'cstate': 'true', 'parentname': 'Default', 'class': 'DEFAULT', 'field': 'default', 'state': True, 'parentclass': '', 'groups': [], 'parameters': [{'srcline': 291, 'description': 'Amount of time (s) controller is permitted to be late achieving goal', 'max': 120.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'goal_time', 'edit_method': '', 'default': 0.1, 'level': 0, 'min': 0.0, 'type': 'double'}, {'srcline': 291, 'description': 'Maximum velocity (m/s) at end of trajectory to be considered stopped', 'max': 1.0, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'stopped_velocity_tolerance', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -1.0, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint1 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint1_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint2 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint2_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint3 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint3_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint4 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint4_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint5 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint5_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint6 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint6_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint7 - maximum final error', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint7_goal', 'edit_method': '', 'default': -0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint1 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint1_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint2 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint2_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint3 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint3_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint4 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint4_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint5 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint5_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint6 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint6_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}, {'srcline': 291, 'description': 'panda_joint7 - maximum error during trajectory execution', 'max': 0.5, 'cconsttype': 'const double', 'ctype': 'double', 'srcfile': '/opt/ros/melodic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'name': 'panda_joint7_trajectory', 'edit_method': '', 'default': 0.2, 'level': 0, 'min': -0.5, 'type': 'double'}], 'type': '', 'id': 0}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

