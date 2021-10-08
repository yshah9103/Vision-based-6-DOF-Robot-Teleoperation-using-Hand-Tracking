;; Auto-generated. Do not edit!


(when (boundp 'franka_core_msgs::JointLimits)
  (if (not (find-package "FRANKA_CORE_MSGS"))
    (make-package "FRANKA_CORE_MSGS"))
  (shadow 'JointLimits (find-package "FRANKA_CORE_MSGS")))
(unless (find-package "FRANKA_CORE_MSGS::JOINTLIMITS")
  (make-package "FRANKA_CORE_MSGS::JOINTLIMITS"))

(in-package "ROS")
;;//! \htmlinclude JointLimits.msg.html


(defclass franka_core_msgs::JointLimits
  :super ros::object
  :slots (_joint_names _position_lower _position_upper _velocity _accel _effort ))

(defmethod franka_core_msgs::JointLimits
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:position_lower __position_lower) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_upper __position_upper) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:accel __accel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _position_lower __position_lower)
   (setq _position_upper __position_upper)
   (setq _velocity __velocity)
   (setq _accel __accel)
   (setq _effort __effort)
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:position_lower
   (&optional __position_lower)
   (if __position_lower (setq _position_lower __position_lower)) _position_lower)
  (:position_upper
   (&optional __position_upper)
   (if __position_upper (setq _position_upper __position_upper)) _position_upper)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _position_lower
    (* 8    (length _position_lower)) 4
    ;; float64[] _position_upper
    (* 8    (length _position_upper)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _accel
    (* 8    (length _accel)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _position_lower
     (write-long (length _position_lower) s)
     (dotimes (i (length _position_lower))
       (sys::poke (elt _position_lower i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position_upper
     (write-long (length _position_upper) s)
     (dotimes (i (length _position_upper))
       (sys::poke (elt _position_upper i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _accel
     (write-long (length _accel) s)
     (dotimes (i (length _accel))
       (sys::poke (elt _accel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _position_lower
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_lower (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_lower i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position_upper
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_upper (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_upper i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _accel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get franka_core_msgs::JointLimits :md5sum-) "c4c445eb2c9324525a704c84ca1e7598")
(setf (get franka_core_msgs::JointLimits :datatype-) "franka_core_msgs/JointLimits")
(setf (get franka_core_msgs::JointLimits :definition-)
      "# names of the joints
string[] joint_names

# lower bound on the angular position in radians
float64[] position_lower

# upper bound on the angular position in radians
float64[] position_upper

# symmetric maximum joint velocity in radians/second
float64[] velocity

# symmetric maximum joint acceleration in radians/second^2
float64[] accel

# symmetric maximum joint torque in Newton-meters
float64[] effort

")



(provide :franka_core_msgs/JointLimits "c4c445eb2c9324525a704c84ca1e7598")


