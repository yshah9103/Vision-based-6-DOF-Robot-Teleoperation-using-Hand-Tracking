;; Auto-generated. Do not edit!


(when (boundp 'franka_core_msgs::JointControllerStates)
  (if (not (find-package "FRANKA_CORE_MSGS"))
    (make-package "FRANKA_CORE_MSGS"))
  (shadow 'JointControllerStates (find-package "FRANKA_CORE_MSGS")))
(unless (find-package "FRANKA_CORE_MSGS::JOINTCONTROLLERSTATES")
  (make-package "FRANKA_CORE_MSGS::JOINTCONTROLLERSTATES"))

(in-package "ROS")
;;//! \htmlinclude JointControllerStates.msg.html
(if (not (find-package "CONTROL_MSGS"))
  (ros::roseus-add-msgs "control_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass franka_core_msgs::JointControllerStates
  :super ros::object
  :slots (_header _controller_name _names _joint_controller_states ))

(defmethod franka_core_msgs::JointControllerStates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:controller_name __controller_name) "")
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:joint_controller_states __joint_controller_states) (let (r) (dotimes (i 0) (push (instance control_msgs::JointControllerState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _controller_name (string __controller_name))
   (setq _names __names)
   (setq _joint_controller_states __joint_controller_states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:controller_name
   (&optional __controller_name)
   (if __controller_name (setq _controller_name __controller_name)) _controller_name)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:joint_controller_states
   (&rest __joint_controller_states)
   (if (keywordp (car __joint_controller_states))
       (send* _joint_controller_states __joint_controller_states)
     (progn
       (if __joint_controller_states (setq _joint_controller_states (car __joint_controller_states)))
       _joint_controller_states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _controller_name
    4 (length _controller_name)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; control_msgs/JointControllerState[] _joint_controller_states
    (apply #'+ (send-all _joint_controller_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _controller_name
       (write-long (length _controller_name) s) (princ _controller_name s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; control_msgs/JointControllerState[] _joint_controller_states
     (write-long (length _joint_controller_states) s)
     (dolist (elem _joint_controller_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _controller_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _controller_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; control_msgs/JointControllerState[] _joint_controller_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_controller_states (let (r) (dotimes (i n) (push (instance control_msgs::JointControllerState :init) r)) r))
     (dolist (elem- _joint_controller_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get franka_core_msgs::JointControllerStates :md5sum-) "edf5e0c6d3f96d827825a101e071c998")
(setf (get franka_core_msgs::JointControllerStates :datatype-) "franka_core_msgs/JointControllerStates")
(setf (get franka_core_msgs::JointControllerStates :definition-)
      "Header header

string controller_name

string[]  names        # Joint names order for command

control_msgs/JointControllerState[] joint_controller_states 



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: control_msgs/JointControllerState
# This message presents current controller state of one joint.

# Header timestamp should be update time of controller state
Header header

# The set point, that is, desired state.
float64 set_point

# Current value of the process (ie: latest sensor measurement on the controlled value).
float64 process_value

# First time-derivative of the process value.
float64 process_value_dot

# The error of the controlled value, essentially process_value - set_point (for a regular PID implementation).
float64 error

# Time between two consecutive updates/execution of the control law.
float64 time_step

# Current output of the controller.
float64 command

# Current PID parameters of the controller.
float64 p
float64 i
float64 d
float64 i_clamp
bool antiwindup

")



(provide :franka_core_msgs/JointControllerStates "edf5e0c6d3f96d827825a101e071c998")


