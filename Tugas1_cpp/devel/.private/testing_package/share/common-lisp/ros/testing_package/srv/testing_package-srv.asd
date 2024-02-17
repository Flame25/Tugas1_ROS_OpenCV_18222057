
(cl:in-package :asdf)

(defsystem "testing_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "modifyText" :depends-on ("_package_modifyText"))
    (:file "_package_modifyText" :depends-on ("_package"))
  ))