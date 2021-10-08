;; Auto-generated. Do not edit!


(when (boundp 'franka_core_msgs::EndPointState)
  (if (not (find-package "FRANKA_CORE_MSGS"))
    (make-package "FRANKA_CORE_MSGS"))
  (shadow 'EndPointState (find-package "FRANKA_CORE_MSGS")))
(unless (find-package "FRANKA_CORE_MSGS::ENDPOINTSTATE")
  (make-package "FRANKA_CORE_MSGS::ENDPOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude EndPointState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass franka_core_msgs::EndPointState
  :super ros::object
  :slots (_header _O_T_EE _O_F_ext_hat_K _K_F_ext_hat_K ))

(defmethod franka_core_msgs::EndPointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:O_T_EE __O_T_EE) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:O_F_ext_hat_K __O_F_ext_hat_K) (instance geometry_msgs::WrenchStamped :init))
    ((:K_F_ext_hat_K __K_F_ext_hat_K) (instance geometry_msgs::WrenchStamped :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _O_T_EE __O_T_EE)
   (setq _O_F_ext_hat_K __O_F_ext_hat_K)
   (setq _K_F_ext_hat_K __K_F_ext_hat_K)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:O_T_EE
   (&optional __O_T_EE)
   (if __O_T_EE (setq _O_T_EE __O_T_EE)) _O_T_EE)
  (:O_F_ext_hat_K
   (&rest __O_F_ext_hat_K)
   (if (keywordp (car __O_F_ext_hat_K))
       (send* _O_F_ext_hat_K __O_F_ext_hat_K)
     (progn
       (if __O_F_ext_hat_K (setq _O_F_ext_hat_K (car __O_F_ext_hat_K)))
       _O_F_ext_hat_K)))
  (:K_F_ext_hat_K
   (&rest __K_F_ext_hat_K)
   (if (keywordp (car __K_F_ext_hat_K))
       (send* _K_F_ext_hat_K __K_F_ext_hat_K)
     (progn
       (if __K_F_ext_hat_K (setq _K_F_ext_hat_K (car __K_F_ext_hat_K)))
       _K_F_ext_hat_K)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[16] _O_T_EE
    (* 8    16)
    ;; geometry_msgs/WrenchStamped _O_F_ext_hat_K
    (send _O_F_ext_hat_K :serialization-length)
    ;; geometry_msgs/WrenchStamped _K_F_ext_hat_K
    (send _K_F_ext_hat_K :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[16] _O_T_EE
     (dotimes (i 16)
       (sys::poke (elt _O_T_EE i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/WrenchStamped _O_F_ext_hat_K
       (send _O_F_ext_hat_K :serialize s)
     ;; geometry_msgs/WrenchStamped _K_F_ext_hat_K
       (send _K_F_ext_hat_K :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[16] _O_T_EE
   (dotimes (i (length _O_T_EE))
     (setf (elt _O_T_EE i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/WrenchStamped _O_F_ext_hat_K
     (send _O_F_ext_hat_K :deserialize buf ptr-) (incf ptr- (send _O_F_ext_hat_K :serialization-length))
   ;; geometry_msgs/WrenchStamped _K_F_ext_hat_K
     (send _K_F_ext_hat_K :deserialize buf ptr-) (incf ptr- (send _K_F_ext_hat_K :serialization-length))
   ;;
   self)
  )

(setf (get franka_core_msgs::EndPointState :md5sum-) "157e46b2d97e94a67549f0fd8090f80c")
(setf (get franka_core_msgs::EndPointState :datatype-) "franka_core_msgs/EndPointState")
(setf (get franka_core_msgs::EndPointState :definition-)
      "std_msgs/Header header

float64[16] O_T_EE # Measured end effector pose in base frame

# ----- Moved ee velocity to robot state, because it is being computed using J*dq. EE vel is not being provided natively
#float64[6] O_dP_EE_c # Last commanded end effector twist in base frame.
#float64[6] O_dP_EE_d # Desired end effector twist in base frame.
#float64[6] O_ddP_EE_c # Last commanded end effector acceleration in base frame.

geometry_msgs/WrenchStamped O_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the base frame
geometry_msgs/WrenchStamped K_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the stiffness frame (ee_frame by default)




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
MSG: geometry_msgs/WrenchStamped
# A wrench with reference coordinate frame and timestamp
Header header
Wrench wrench

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :franka_core_msgs/EndPointState "157e46b2d97e94a67549f0fd8090f80c")


