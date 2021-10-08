
(cl:in-package :asdf)

(defsystem "franka_core_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :control_msgs-msg
               :franka_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "EndPointState" :depends-on ("_package_EndPointState"))
    (:file "_package_EndPointState" :depends-on ("_package"))
    (:file "JointCommand" :depends-on ("_package_JointCommand"))
    (:file "_package_JointCommand" :depends-on ("_package"))
    (:file "JointControllerStates" :depends-on ("_package_JointControllerStates"))
    (:file "_package_JointControllerStates" :depends-on ("_package"))
    (:file "JointLimits" :depends-on ("_package_JointLimits"))
    (:file "_package_JointLimits" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
  ))