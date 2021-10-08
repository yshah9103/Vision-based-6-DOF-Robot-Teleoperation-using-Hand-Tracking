;; Auto-generated. Do not edit!


(when (boundp 'franka_core_msgs::JointCommand)
  (if (not (find-package "FRANKA_CORE_MSGS"))
    (make-package "FRANKA_CORE_MSGS"))
  (shadow 'JointCommand (find-package "FRANKA_CORE_MSGS")))
(unless (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND")
  (make-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POSITION_MODE*" (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(shadow '*POSITION_MODE* (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(defconstant franka_core_msgs::JointCommand::*POSITION_MODE* 1)
(intern "*VELOCITY_MODE*" (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(shadow '*VELOCITY_MODE* (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(defconstant franka_core_msgs::JointCommand::*VELOCITY_MODE* 2)
(intern "*TORQUE_MODE*" (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(shadow '*TORQUE_MODE* (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(defconstant franka_core_msgs::JointCommand::*TORQUE_MODE* 3)
(intern "*IMPEDANCE_MODE*" (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(shadow '*IMPEDANCE_MODE* (find-package "FRANKA_CORE_MSGS::JOINTCOMMAND"))
(defconstant franka_core_msgs::JointCommand::*IMPEDANCE_MODE* 4)
(defclass franka_core_msgs::JointCommand
  :super ros::object
  :slots (_header _mode _names _position _velocity _acceleration _effort ))

(defmethod franka_core_msgs::JointCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration __acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _names __names)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _effort __effort)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _mode
    4
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _acceleration
    (* 8    (length _acceleration)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _mode
       (write-long _mode s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acceleration
     (write-long (length _acceleration) s)
     (dotimes (i (length _acceleration))
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get franka_core_msgs::JointCommand :md5sum-) "766f72e801d6180a86db23dbf2c2a56f")
(setf (get franka_core_msgs::JointCommand :datatype-) "franka_core_msgs/JointCommand")
(setf (get franka_core_msgs::JointCommand :definition-)
      "Header header

int32 mode             # Mode in which to command arm

string[]  names        # Joint names order for command

# Fields of commands indexed according to the Joint names vector.
# Command fields required for a desired mode are listed in the comments
float64[] position     # (radians)       Required for POSITION_MODE and IMPEDANCE_MODE
float64[] velocity     # (radians/sec)   Required for VELOCITY_MODE and IMPEDANCE_MODE
float64[] acceleration # (radians/sec^2) Required for                   
float64[] effort       # (newton-meters) Required for TORQUE_MODE

# Modes available to command arm
int32 POSITION_MODE=1
int32 VELOCITY_MODE=2
int32 TORQUE_MODE=3
int32 IMPEDANCE_MODE=4

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

")



(provide :franka_core_msgs/JointCommand "766f72e801d6180a86db23dbf2c2a56f")


