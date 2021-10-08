; Auto-generated. Do not edit!


(cl:in-package franka_core_msgs-msg)


;//! \htmlinclude EndPointState.msg.html

(cl:defclass <EndPointState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (O_T_EE
    :reader O_T_EE
    :initarg :O_T_EE
    :type (cl:vector cl:float)
   :initform (cl:make-array 16 :element-type 'cl:float :initial-element 0.0))
   (O_F_ext_hat_K
    :reader O_F_ext_hat_K
    :initarg :O_F_ext_hat_K
    :type geometry_msgs-msg:WrenchStamped
    :initform (cl:make-instance 'geometry_msgs-msg:WrenchStamped))
   (K_F_ext_hat_K
    :reader K_F_ext_hat_K
    :initarg :K_F_ext_hat_K
    :type geometry_msgs-msg:WrenchStamped
    :initform (cl:make-instance 'geometry_msgs-msg:WrenchStamped)))
)

(cl:defclass EndPointState (<EndPointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EndPointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EndPointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name franka_core_msgs-msg:<EndPointState> is deprecated: use franka_core_msgs-msg:EndPointState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EndPointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:header-val is deprecated.  Use franka_core_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'O_T_EE-val :lambda-list '(m))
(cl:defmethod O_T_EE-val ((m <EndPointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:O_T_EE-val is deprecated.  Use franka_core_msgs-msg:O_T_EE instead.")
  (O_T_EE m))

(cl:ensure-generic-function 'O_F_ext_hat_K-val :lambda-list '(m))
(cl:defmethod O_F_ext_hat_K-val ((m <EndPointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:O_F_ext_hat_K-val is deprecated.  Use franka_core_msgs-msg:O_F_ext_hat_K instead.")
  (O_F_ext_hat_K m))

(cl:ensure-generic-function 'K_F_ext_hat_K-val :lambda-list '(m))
(cl:defmethod K_F_ext_hat_K-val ((m <EndPointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader franka_core_msgs-msg:K_F_ext_hat_K-val is deprecated.  Use franka_core_msgs-msg:K_F_ext_hat_K instead.")
  (K_F_ext_hat_K m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EndPointState>) ostream)
  "Serializes a message object of type '<EndPointState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'O_T_EE))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'O_F_ext_hat_K) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'K_F_ext_hat_K) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EndPointState>) istream)
  "Deserializes a message object of type '<EndPointState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'O_T_EE) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'O_T_EE)))
    (cl:dotimes (i 16)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'O_F_ext_hat_K) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'K_F_ext_hat_K) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EndPointState>)))
  "Returns string type for a message object of type '<EndPointState>"
  "franka_core_msgs/EndPointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EndPointState)))
  "Returns string type for a message object of type 'EndPointState"
  "franka_core_msgs/EndPointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EndPointState>)))
  "Returns md5sum for a message object of type '<EndPointState>"
  "157e46b2d97e94a67549f0fd8090f80c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EndPointState)))
  "Returns md5sum for a message object of type 'EndPointState"
  "157e46b2d97e94a67549f0fd8090f80c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EndPointState>)))
  "Returns full string definition for message of type '<EndPointState>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64[16] O_T_EE # Measured end effector pose in base frame~%~%# ----- Moved ee velocity to robot state, because it is being computed using J*dq. EE vel is not being provided natively~%#float64[6] O_dP_EE_c # Last commanded end effector twist in base frame.~%#float64[6] O_dP_EE_d # Desired end effector twist in base frame.~%#float64[6] O_ddP_EE_c # Last commanded end effector acceleration in base frame.~%~%geometry_msgs/WrenchStamped O_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the base frame~%geometry_msgs/WrenchStamped K_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the stiffness frame (ee_frame by default)~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/WrenchStamped~%# A wrench with reference coordinate frame and timestamp~%Header header~%Wrench wrench~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EndPointState)))
  "Returns full string definition for message of type 'EndPointState"
  (cl:format cl:nil "std_msgs/Header header~%~%float64[16] O_T_EE # Measured end effector pose in base frame~%~%# ----- Moved ee velocity to robot state, because it is being computed using J*dq. EE vel is not being provided natively~%#float64[6] O_dP_EE_c # Last commanded end effector twist in base frame.~%#float64[6] O_dP_EE_d # Desired end effector twist in base frame.~%#float64[6] O_ddP_EE_c # Last commanded end effector acceleration in base frame.~%~%geometry_msgs/WrenchStamped O_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the base frame~%geometry_msgs/WrenchStamped K_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the stiffness frame (ee_frame by default)~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/WrenchStamped~%# A wrench with reference coordinate frame and timestamp~%Header header~%Wrench wrench~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EndPointState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'O_T_EE) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'O_F_ext_hat_K))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'K_F_ext_hat_K))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EndPointState>))
  "Converts a ROS message object to a list"
  (cl:list 'EndPointState
    (cl:cons ':header (header msg))
    (cl:cons ':O_T_EE (O_T_EE msg))
    (cl:cons ':O_F_ext_hat_K (O_F_ext_hat_K msg))
    (cl:cons ':K_F_ext_hat_K (K_F_ext_hat_K msg))
))
