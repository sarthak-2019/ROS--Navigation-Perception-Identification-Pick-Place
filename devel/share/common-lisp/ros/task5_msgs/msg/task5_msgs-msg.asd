
(cl:in-package :asdf)

(defsystem "task5_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Data_msg" :depends-on ("_package_Data_msg"))
    (:file "_package_Data_msg" :depends-on ("_package"))
    (:file "Flag_msg" :depends-on ("_package_Flag_msg"))
    (:file "_package_Flag_msg" :depends-on ("_package"))
  ))