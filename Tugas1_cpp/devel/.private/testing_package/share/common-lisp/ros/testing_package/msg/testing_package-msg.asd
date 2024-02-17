
(cl:in-package :asdf)

(defsystem "testing_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DronePos" :depends-on ("_package_DronePos"))
    (:file "_package_DronePos" :depends-on ("_package"))
  ))