
(cl:in-package :asdf)

(defsystem "ebot_task4-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "legends" :depends-on ("_package_legends"))
    (:file "_package_legends" :depends-on ("_package"))
  ))