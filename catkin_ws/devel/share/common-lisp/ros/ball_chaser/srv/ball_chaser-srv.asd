
(cl:in-package :asdf)

(defsystem "ball_chaser-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DriveToTarget" :depends-on ("_package_DriveToTarget"))
    (:file "_package_DriveToTarget" :depends-on ("_package"))
    (:file "Service1" :depends-on ("_package_Service1"))
    (:file "_package_Service1" :depends-on ("_package"))
    (:file "Service2" :depends-on ("_package_Service2"))
    (:file "_package_Service2" :depends-on ("_package"))
  ))