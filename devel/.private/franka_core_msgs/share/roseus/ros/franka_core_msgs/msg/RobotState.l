;; Auto-generated. Do not edit!


(when (boundp 'franka_core_msgs::RobotState)
  (if (not (find-package "FRANKA_CORE_MSGS"))
    (make-package "FRANKA_CORE_MSGS"))
  (shadow 'RobotState (find-package "FRANKA_CORE_MSGS")))
(unless (find-package "FRANKA_CORE_MSGS::ROBOTSTATE")
  (make-package "FRANKA_CORE_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html
(if (not (find-package "FRANKA_MSGS"))
  (ros::roseus-add-msgs "franka_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ROBOT_MODE_OTHER*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_OTHER* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_OTHER* 0)
(intern "*ROBOT_MODE_IDLE*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_IDLE* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_IDLE* 1)
(intern "*ROBOT_MODE_MOVE*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_MOVE* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_MOVE* 2)
(intern "*ROBOT_MODE_GUIDING*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_GUIDING* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_GUIDING* 3)
(intern "*ROBOT_MODE_REFLEX*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_REFLEX* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_REFLEX* 4)
(intern "*ROBOT_MODE_USER_STOPPED*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_USER_STOPPED* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_USER_STOPPED* 5)
(intern "*ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY*" (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY* (find-package "FRANKA_CORE_MSGS::ROBOTSTATE"))
(defconstant franka_core_msgs::RobotState::*ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY* 6)
(defclass franka_core_msgs::RobotState
  :super ros::object
  :slots (_header _cartesian_collision _cartesian_contact _O_dP_EE _q_d _dq_d _dtau_J _tau_J_d _joint_collision _joint_contact _tau_ext_hat_filtered _F_x_Cee _F_x_Cload _F_x_Ctotal _I_ee _I_load _I_total _m_ee _m_load _m_total _gravity _coriolis _mass_matrix _O_Jac_EE _O_T_EE_d _F_T_EE _F_T_NE _NE_T_EE _EE_T_K _time _robot_mode _current_errors _last_motion_errors ))

(defmethod franka_core_msgs::RobotState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cartesian_collision __cartesian_collision) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:cartesian_contact __cartesian_contact) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:O_dP_EE __O_dP_EE) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:q_d __q_d) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:dq_d __dq_d) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:dtau_J __dtau_J) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:tau_J_d __tau_J_d) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_collision __joint_collision) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:joint_contact __joint_contact) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:tau_ext_hat_filtered __tau_ext_hat_filtered) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:F_x_Cee __F_x_Cee) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:F_x_Cload __F_x_Cload) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:F_x_Ctotal __F_x_Ctotal) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:I_ee __I_ee) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:I_load __I_load) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:I_total __I_total) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:m_ee __m_ee) 0.0)
    ((:m_load __m_load) 0.0)
    ((:m_total __m_total) 0.0)
    ((:gravity __gravity) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:coriolis __coriolis) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:mass_matrix __mass_matrix) (make-array 49 :initial-element 0.0 :element-type :float))
    ((:O_Jac_EE __O_Jac_EE) (make-array 42 :initial-element 0.0 :element-type :float))
    ((:O_T_EE_d __O_T_EE_d) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:F_T_EE __F_T_EE) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:F_T_NE __F_T_NE) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:NE_T_EE __NE_T_EE) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:EE_T_K __EE_T_K) (make-array 16 :initial-element 0.0 :element-type :float))
    ((:time __time) 0.0)
    ((:robot_mode __robot_mode) 0)
    ((:current_errors __current_errors) (instance franka_msgs::Errors :init))
    ((:last_motion_errors __last_motion_errors) (instance franka_msgs::Errors :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cartesian_collision __cartesian_collision)
   (setq _cartesian_contact __cartesian_contact)
   (setq _O_dP_EE __O_dP_EE)
   (setq _q_d __q_d)
   (setq _dq_d __dq_d)
   (setq _dtau_J __dtau_J)
   (setq _tau_J_d __tau_J_d)
   (setq _joint_collision __joint_collision)
   (setq _joint_contact __joint_contact)
   (setq _tau_ext_hat_filtered __tau_ext_hat_filtered)
   (setq _F_x_Cee __F_x_Cee)
   (setq _F_x_Cload __F_x_Cload)
   (setq _F_x_Ctotal __F_x_Ctotal)
   (setq _I_ee __I_ee)
   (setq _I_load __I_load)
   (setq _I_total __I_total)
   (setq _m_ee (float __m_ee))
   (setq _m_load (float __m_load))
   (setq _m_total (float __m_total))
   (setq _gravity __gravity)
   (setq _coriolis __coriolis)
   (setq _mass_matrix __mass_matrix)
   (setq _O_Jac_EE __O_Jac_EE)
   (setq _O_T_EE_d __O_T_EE_d)
   (setq _F_T_EE __F_T_EE)
   (setq _F_T_NE __F_T_NE)
   (setq _NE_T_EE __NE_T_EE)
   (setq _EE_T_K __EE_T_K)
   (setq _time (float __time))
   (setq _robot_mode (round __robot_mode))
   (setq _current_errors __current_errors)
   (setq _last_motion_errors __last_motion_errors)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cartesian_collision
   (&optional __cartesian_collision)
   (if __cartesian_collision (setq _cartesian_collision __cartesian_collision)) _cartesian_collision)
  (:cartesian_contact
   (&optional __cartesian_contact)
   (if __cartesian_contact (setq _cartesian_contact __cartesian_contact)) _cartesian_contact)
  (:O_dP_EE
   (&optional __O_dP_EE)
   (if __O_dP_EE (setq _O_dP_EE __O_dP_EE)) _O_dP_EE)
  (:q_d
   (&optional __q_d)
   (if __q_d (setq _q_d __q_d)) _q_d)
  (:dq_d
   (&optional __dq_d)
   (if __dq_d (setq _dq_d __dq_d)) _dq_d)
  (:dtau_J
   (&optional __dtau_J)
   (if __dtau_J (setq _dtau_J __dtau_J)) _dtau_J)
  (:tau_J_d
   (&optional __tau_J_d)
   (if __tau_J_d (setq _tau_J_d __tau_J_d)) _tau_J_d)
  (:joint_collision
   (&optional __joint_collision)
   (if __joint_collision (setq _joint_collision __joint_collision)) _joint_collision)
  (:joint_contact
   (&optional __joint_contact)
   (if __joint_contact (setq _joint_contact __joint_contact)) _joint_contact)
  (:tau_ext_hat_filtered
   (&optional __tau_ext_hat_filtered)
   (if __tau_ext_hat_filtered (setq _tau_ext_hat_filtered __tau_ext_hat_filtered)) _tau_ext_hat_filtered)
  (:F_x_Cee
   (&optional __F_x_Cee)
   (if __F_x_Cee (setq _F_x_Cee __F_x_Cee)) _F_x_Cee)
  (:F_x_Cload
   (&optional __F_x_Cload)
   (if __F_x_Cload (setq _F_x_Cload __F_x_Cload)) _F_x_Cload)
  (:F_x_Ctotal
   (&optional __F_x_Ctotal)
   (if __F_x_Ctotal (setq _F_x_Ctotal __F_x_Ctotal)) _F_x_Ctotal)
  (:I_ee
   (&optional __I_ee)
   (if __I_ee (setq _I_ee __I_ee)) _I_ee)
  (:I_load
   (&optional __I_load)
   (if __I_load (setq _I_load __I_load)) _I_load)
  (:I_total
   (&optional __I_total)
   (if __I_total (setq _I_total __I_total)) _I_total)
  (:m_ee
   (&optional __m_ee)
   (if __m_ee (setq _m_ee __m_ee)) _m_ee)
  (:m_load
   (&optional __m_load)
   (if __m_load (setq _m_load __m_load)) _m_load)
  (:m_total
   (&optional __m_total)
   (if __m_total (setq _m_total __m_total)) _m_total)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:coriolis
   (&optional __coriolis)
   (if __coriolis (setq _coriolis __coriolis)) _coriolis)
  (:mass_matrix
   (&optional __mass_matrix)
   (if __mass_matrix (setq _mass_matrix __mass_matrix)) _mass_matrix)
  (:O_Jac_EE
   (&optional __O_Jac_EE)
   (if __O_Jac_EE (setq _O_Jac_EE __O_Jac_EE)) _O_Jac_EE)
  (:O_T_EE_d
   (&optional __O_T_EE_d)
   (if __O_T_EE_d (setq _O_T_EE_d __O_T_EE_d)) _O_T_EE_d)
  (:F_T_EE
   (&optional __F_T_EE)
   (if __F_T_EE (setq _F_T_EE __F_T_EE)) _F_T_EE)
  (:F_T_NE
   (&optional __F_T_NE)
   (if __F_T_NE (setq _F_T_NE __F_T_NE)) _F_T_NE)
  (:NE_T_EE
   (&optional __NE_T_EE)
   (if __NE_T_EE (setq _NE_T_EE __NE_T_EE)) _NE_T_EE)
  (:EE_T_K
   (&optional __EE_T_K)
   (if __EE_T_K (setq _EE_T_K __EE_T_K)) _EE_T_K)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:robot_mode
   (&optional __robot_mode)
   (if __robot_mode (setq _robot_mode __robot_mode)) _robot_mode)
  (:current_errors
   (&rest __current_errors)
   (if (keywordp (car __current_errors))
       (send* _current_errors __current_errors)
     (progn
       (if __current_errors (setq _current_errors (car __current_errors)))
       _current_errors)))
  (:last_motion_errors
   (&rest __last_motion_errors)
   (if (keywordp (car __last_motion_errors))
       (send* _last_motion_errors __last_motion_errors)
     (progn
       (if __last_motion_errors (setq _last_motion_errors (car __last_motion_errors)))
       _last_motion_errors)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[6] _cartesian_collision
    (* 8    6)
    ;; float64[6] _cartesian_contact
    (* 8    6)
    ;; float64[6] _O_dP_EE
    (* 8    6)
    ;; float64[7] _q_d
    (* 8    7)
    ;; float64[7] _dq_d
    (* 8    7)
    ;; float64[7] _dtau_J
    (* 8    7)
    ;; float64[7] _tau_J_d
    (* 8    7)
    ;; float64[7] _joint_collision
    (* 8    7)
    ;; float64[7] _joint_contact
    (* 8    7)
    ;; float64[7] _tau_ext_hat_filtered
    (* 8    7)
    ;; float64[3] _F_x_Cee
    (* 8    3)
    ;; float64[3] _F_x_Cload
    (* 8    3)
    ;; float64[3] _F_x_Ctotal
    (* 8    3)
    ;; float64[9] _I_ee
    (* 8    9)
    ;; float64[9] _I_load
    (* 8    9)
    ;; float64[9] _I_total
    (* 8    9)
    ;; float64 _m_ee
    8
    ;; float64 _m_load
    8
    ;; float64 _m_total
    8
    ;; float64[7] _gravity
    (* 8    7)
    ;; float64[7] _coriolis
    (* 8    7)
    ;; float64[49] _mass_matrix
    (* 8    49)
    ;; float64[42] _O_Jac_EE
    (* 8    42)
    ;; float64[16] _O_T_EE_d
    (* 8    16)
    ;; float64[16] _F_T_EE
    (* 8    16)
    ;; float64[16] _F_T_NE
    (* 8    16)
    ;; float64[16] _NE_T_EE
    (* 8    16)
    ;; float64[16] _EE_T_K
    (* 8    16)
    ;; float64 _time
    8
    ;; uint8 _robot_mode
    1
    ;; franka_msgs/Errors _current_errors
    (send _current_errors :serialization-length)
    ;; franka_msgs/Errors _last_motion_errors
    (send _last_motion_errors :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[6] _cartesian_collision
     (dotimes (i 6)
       (sys::poke (elt _cartesian_collision i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _cartesian_contact
     (dotimes (i 6)
       (sys::poke (elt _cartesian_contact i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[6] _O_dP_EE
     (dotimes (i 6)
       (sys::poke (elt _O_dP_EE i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _q_d
     (dotimes (i 7)
       (sys::poke (elt _q_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _dq_d
     (dotimes (i 7)
       (sys::poke (elt _dq_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _dtau_J
     (dotimes (i 7)
       (sys::poke (elt _dtau_J i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _tau_J_d
     (dotimes (i 7)
       (sys::poke (elt _tau_J_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_collision
     (dotimes (i 7)
       (sys::poke (elt _joint_collision i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _joint_contact
     (dotimes (i 7)
       (sys::poke (elt _joint_contact i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _tau_ext_hat_filtered
     (dotimes (i 7)
       (sys::poke (elt _tau_ext_hat_filtered i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _F_x_Cee
     (dotimes (i 3)
       (sys::poke (elt _F_x_Cee i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _F_x_Cload
     (dotimes (i 3)
       (sys::poke (elt _F_x_Cload i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _F_x_Ctotal
     (dotimes (i 3)
       (sys::poke (elt _F_x_Ctotal i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _I_ee
     (dotimes (i 9)
       (sys::poke (elt _I_ee i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _I_load
     (dotimes (i 9)
       (sys::poke (elt _I_load i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _I_total
     (dotimes (i 9)
       (sys::poke (elt _I_total i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _m_ee
       (sys::poke _m_ee (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m_load
       (sys::poke _m_load (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m_total
       (sys::poke _m_total (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[7] _gravity
     (dotimes (i 7)
       (sys::poke (elt _gravity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[7] _coriolis
     (dotimes (i 7)
       (sys::poke (elt _coriolis i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[49] _mass_matrix
     (dotimes (i 49)
       (sys::poke (elt _mass_matrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[42] _O_Jac_EE
     (dotimes (i 42)
       (sys::poke (elt _O_Jac_EE i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[16] _O_T_EE_d
     (dotimes (i 16)
       (sys::poke (elt _O_T_EE_d i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[16] _F_T_EE
     (dotimes (i 16)
       (sys::poke (elt _F_T_EE i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[16] _F_T_NE
     (dotimes (i 16)
       (sys::poke (elt _F_T_NE i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[16] _NE_T_EE
     (dotimes (i 16)
       (sys::poke (elt _NE_T_EE i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[16] _EE_T_K
     (dotimes (i 16)
       (sys::poke (elt _EE_T_K i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _robot_mode
       (write-byte _robot_mode s)
     ;; franka_msgs/Errors _current_errors
       (send _current_errors :serialize s)
     ;; franka_msgs/Errors _last_motion_errors
       (send _last_motion_errors :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[6] _cartesian_collision
   (dotimes (i (length _cartesian_collision))
     (setf (elt _cartesian_collision i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _cartesian_contact
   (dotimes (i (length _cartesian_contact))
     (setf (elt _cartesian_contact i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[6] _O_dP_EE
   (dotimes (i (length _O_dP_EE))
     (setf (elt _O_dP_EE i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _q_d
   (dotimes (i (length _q_d))
     (setf (elt _q_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _dq_d
   (dotimes (i (length _dq_d))
     (setf (elt _dq_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _dtau_J
   (dotimes (i (length _dtau_J))
     (setf (elt _dtau_J i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _tau_J_d
   (dotimes (i (length _tau_J_d))
     (setf (elt _tau_J_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_collision
   (dotimes (i (length _joint_collision))
     (setf (elt _joint_collision i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _joint_contact
   (dotimes (i (length _joint_contact))
     (setf (elt _joint_contact i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _tau_ext_hat_filtered
   (dotimes (i (length _tau_ext_hat_filtered))
     (setf (elt _tau_ext_hat_filtered i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _F_x_Cee
   (dotimes (i (length _F_x_Cee))
     (setf (elt _F_x_Cee i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _F_x_Cload
   (dotimes (i (length _F_x_Cload))
     (setf (elt _F_x_Cload i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _F_x_Ctotal
   (dotimes (i (length _F_x_Ctotal))
     (setf (elt _F_x_Ctotal i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _I_ee
   (dotimes (i (length _I_ee))
     (setf (elt _I_ee i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _I_load
   (dotimes (i (length _I_load))
     (setf (elt _I_load i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _I_total
   (dotimes (i (length _I_total))
     (setf (elt _I_total i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _m_ee
     (setq _m_ee (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m_load
     (setq _m_load (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m_total
     (setq _m_total (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[7] _gravity
   (dotimes (i (length _gravity))
     (setf (elt _gravity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[7] _coriolis
   (dotimes (i (length _coriolis))
     (setf (elt _coriolis i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[49] _mass_matrix
   (dotimes (i (length _mass_matrix))
     (setf (elt _mass_matrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[42] _O_Jac_EE
   (dotimes (i (length _O_Jac_EE))
     (setf (elt _O_Jac_EE i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[16] _O_T_EE_d
   (dotimes (i (length _O_T_EE_d))
     (setf (elt _O_T_EE_d i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[16] _F_T_EE
   (dotimes (i (length _F_T_EE))
     (setf (elt _F_T_EE i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[16] _F_T_NE
   (dotimes (i (length _F_T_NE))
     (setf (elt _F_T_NE i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[16] _NE_T_EE
   (dotimes (i (length _NE_T_EE))
     (setf (elt _NE_T_EE i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[16] _EE_T_K
   (dotimes (i (length _EE_T_K))
     (setf (elt _EE_T_K i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _robot_mode
     (setq _robot_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; franka_msgs/Errors _current_errors
     (send _current_errors :deserialize buf ptr-) (incf ptr- (send _current_errors :serialization-length))
   ;; franka_msgs/Errors _last_motion_errors
     (send _last_motion_errors :deserialize buf ptr-) (incf ptr- (send _last_motion_errors :serialization-length))
   ;;
   self)
  )

(setf (get franka_core_msgs::RobotState :md5sum-) "5b1c24f59317c607d71ccadfc0800957")
(setf (get franka_core_msgs::RobotState :datatype-) "franka_core_msgs/RobotState")
(setf (get franka_core_msgs::RobotState :definition-)
      "std_msgs/Header header

float64[6] cartesian_collision
float64[6] cartesian_contact
float64[6] O_dP_EE # EE vel computed as J*dq

# float64[7] q # joint position, velocity, and effort in joint_states topic
# float64[7] dq

float64[7] q_d
float64[7] dq_d
# float64[7] tau_J
float64[7] dtau_J # torque derivative
float64[7] tau_J_d # desired joint torque
# float64[6] K_F_ext_hat_K
# float64[2] elbow
# float64[2] elbow_d

float64[7] joint_collision
float64[7] joint_contact

# float64[6] O_F_ext_hat_K # in tip state

float64[7] tau_ext_hat_filtered # filtered external torque
float64[3] F_x_Cee # Configured center of mass of the end effector load with respect to flange frame.
float64[3] F_x_Cload # Configured center of mass of the external load with respect to flange frame.
float64[3] F_x_Ctotal # Combined center of mass of the end effector load and the external load with respect to flange frame.
float64[9] I_ee # Configured rotational inertia matrix of the end effector load with respect to center of mass.
float64[9] I_load
float64[9] I_total

float64 m_ee # configured mass of end-effector
float64 m_load # configured mass of external load
float64 m_total


float64[7] gravity
float64[7] coriolis
float64[49] mass_matrix # mass matrix of end-effector wrt base frame # Vectorized 7x7, column-major

float64[42] O_Jac_EE # zero jacobian of end-effector frame. Vectorized 6x7 Jacobian, column-major

# float64[16] O_T_EE # ----- moved to endpointstate msg # Vectorized 4x4, column-major
float64[16] O_T_EE_d # Last desired end effector pose of motion generation in base frame.  # Vectorized 4x4, column-major
float64[16] F_T_EE # End effector frame pose in flange frame # Vectorized 4x4, column-major
float64[16] F_T_NE # Nominal End effector frame pose in flange frame (fixed in Desk) # Vectorized 4x4, column-major
float64[16] NE_T_EE # End effector frame pose in Nominal End effector frame # Vectorized 4x4, column-major
float64[16] EE_T_K # Stiffness frame pose in end effector frame # Vectorized 4x4, column-major
float64 time

uint8 ROBOT_MODE_OTHER=0
uint8 ROBOT_MODE_IDLE=1
uint8 ROBOT_MODE_MOVE=2
uint8 ROBOT_MODE_GUIDING=3
uint8 ROBOT_MODE_REFLEX=4
uint8 ROBOT_MODE_USER_STOPPED=5
uint8 ROBOT_MODE_AUTOMATIC_ERROR_RECOVERY=6
uint8 robot_mode

franka_msgs/Errors current_errors
franka_msgs/Errors last_motion_errors

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
MSG: franka_msgs/Errors
bool joint_position_limits_violation
bool cartesian_position_limits_violation
bool self_collision_avoidance_violation
bool joint_velocity_violation
bool cartesian_velocity_violation
bool force_control_safety_violation
bool joint_reflex
bool cartesian_reflex
bool max_goal_pose_deviation_violation
bool max_path_pose_deviation_violation
bool cartesian_velocity_profile_safety_violation
bool joint_position_motion_generator_start_pose_invalid
bool joint_motion_generator_position_limits_violation
bool joint_motion_generator_velocity_limits_violation
bool joint_motion_generator_velocity_discontinuity
bool joint_motion_generator_acceleration_discontinuity
bool cartesian_position_motion_generator_start_pose_invalid
bool cartesian_motion_generator_elbow_limit_violation
bool cartesian_motion_generator_velocity_limits_violation
bool cartesian_motion_generator_velocity_discontinuity
bool cartesian_motion_generator_acceleration_discontinuity
bool cartesian_motion_generator_elbow_sign_inconsistent
bool cartesian_motion_generator_start_elbow_invalid
bool cartesian_motion_generator_joint_position_limits_violation
bool cartesian_motion_generator_joint_velocity_limits_violation
bool cartesian_motion_generator_joint_velocity_discontinuity
bool cartesian_motion_generator_joint_acceleration_discontinuity
bool cartesian_position_motion_generator_invalid_frame
bool force_controller_desired_force_tolerance_violation
bool controller_torque_discontinuity
bool start_elbow_sign_inconsistent
bool communication_constraints_violation
bool power_limit_violation
bool joint_p2p_insufficient_torque_for_planning
bool tau_j_range_violation
bool instability_detected

")



(provide :franka_core_msgs/RobotState "5b1c24f59317c607d71ccadfc0800957")


