; Auto-generated. Do not edit!


(cl:in-package franka_core_msgs-msg)


;//! \htmlinclude JointControllerStates.msg.html

(cl:defclass <JointControllerStates> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (controller_name
    :reader controller_name
    :initarg :controller_name
    :type cl:string
    :initform "")
   (names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (joint_controller_states
    :reader joint_controller_states
    :initarg :joint_controller_states
    :type (cl:vector control_msgs-msg:JointControllerState)
   :initform (cl:make-array 0 :element-type 'control_msgs-msg:JointControllerState :initial-element (cl:make-instance 'control_msgs-msg:JointControllerState))))
)

(cl:defclass JointControllerStates (<JointControllerStates>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointControllerStates>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointControllerStates)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name franka_core_msgs-msg:<JointControllerStates> is deprecated: use franka_core_msgs-msg:JointControllerStates instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <JointControllerStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:header-val is deprecated.  Use franka_core_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'controller_name-val :lambda-list '(m))
(cl:defmethod controller_name-val ((m <JointControllerStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:controller_name-val is deprecated.  Use franka_core_msgs-msg:controller_name instead.")
  (controller_name m))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <JointControllerStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:names-val is deprecated.  Use franka_core_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'joint_controller_states-val :lambda-list '(m))
(cl:defmethod joint_controller_states-val ((m <JointControllerStates>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:joint_controller_states-val is deprecated.  Use franka_core_msgs-msg:joint_controller_states instead.")
  (joint_controller_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointControllerStates>) ostream)
  "Serializes a message object of type '<JointControllerStates>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'controller_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'controller_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_controller_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_controller_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointControllerStates>) istream)
  "Deserializes a message object of type '<JointControllerStates>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'controller_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_controller_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_controller_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'control_msgs-msg:JointControllerState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointControllerStates>)))
  "Returns string type for a message object of type '<JointControllerStates>"
  "franka_core_msgs/JointControllerStates")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointControllerStates)))
  "Returns string type for a message object of type 'JointControllerStates"
  "franka_core_msgs/JointControllerStates")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointControllerStates>)))
  "Returns md5sum for a message object of type '<JointControllerStates>"
  "edf5e0c6d3f96d827825a101e071c998")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointControllerStates)))
  "Returns md5sum for a message object of type 'JointControllerStates"
  "edf5e0c6d3f96d827825a101e071c998")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointControllerStates>)))
  "Returns full string definition for message of type '<JointControllerStates>"
  (cl:format cl:nil "Header header~%~%string controller_name~%~%string[]  names        # Joint names order for command~%~%control_msgs/JointControllerState[] joint_controller_states ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: control_msgs/JointControllerState~%# This message presents current controller state of one joint.~%~%# Header timestamp should be update time of controller state~%Header header~%~%# The set point, that is, desired state.~%float64 set_point~%~%# Current value of the process (ie: latest sensor measurement on the controlled value).~%float64 process_value~%~%# First time-derivative of the process value.~%float64 process_value_dot~%~%# The error of the controlled value, essentially process_value - set_point (for a regular PID implementation).~%float64 error~%~%# Time between two consecutive updates/execution of the control law.~%float64 time_step~%~%# Current output of the controller.~%float64 command~%~%# Current PID parameters of the controller.~%float64 p~%float64 i~%float64 d~%float64 i_clamp~%bool antiwindup~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointControllerStates)))
  "Returns full string definition for message of type 'JointControllerStates"
  (cl:format cl:nil "Header header~%~%string controller_name~%~%string[]  names        # Joint names order for command~%~%control_msgs/JointControllerState[] joint_controller_states ~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: control_msgs/JointControllerState~%# This message presents current controller state of one joint.~%~%# Header timestamp should be update time of controller state~%Header header~%~%# The set point, that is, desired state.~%float64 set_point~%~%# Current value of the process (ie: latest sensor measurement on the controlled value).~%float64 process_value~%~%# First time-derivative of the process value.~%float64 process_value_dot~%~%# The error of the controlled value, essentially process_value - set_point (for a regular PID implementation).~%float64 error~%~%# Time between two consecutive updates/execution of the control law.~%float64 time_step~%~%# Current output of the controller.~%float64 command~%~%# Current PID parameters of the controller.~%float64 p~%float64 i~%float64 d~%float64 i_clamp~%bool antiwindup~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointControllerStates>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'controller_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_controller_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointControllerStates>))
  "Converts a ROS message object to a list"
  (cl:list 'JointControllerStates
    (cl:cons ':header (header msg))
    (cl:cons ':controller_name (controller_name msg))
    (cl:cons ':names (names msg))
    (cl:cons ':joint_controller_states (joint_controller_states msg))
))
