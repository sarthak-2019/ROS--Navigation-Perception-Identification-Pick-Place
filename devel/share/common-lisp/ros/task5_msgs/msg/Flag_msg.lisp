; Auto-generated. Do not edit!


(cl:in-package task5_msgs-msg)


;//! \htmlinclude Flag_msg.msg.html

(cl:defclass <Flag_msg> (roslisp-msg-protocol:ros-message)
  ((signal
    :reader signal
    :initarg :signal
    :type cl:integer
    :initform 0))
)

(cl:defclass Flag_msg (<Flag_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flag_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flag_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name task5_msgs-msg:<Flag_msg> is deprecated: use task5_msgs-msg:Flag_msg instead.")))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <Flag_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader task5_msgs-msg:signal-val is deprecated.  Use task5_msgs-msg:signal instead.")
  (signal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flag_msg>) ostream)
  "Serializes a message object of type '<Flag_msg>"
  (cl:let* ((signed (cl:slot-value msg 'signal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flag_msg>) istream)
  "Deserializes a message object of type '<Flag_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flag_msg>)))
  "Returns string type for a message object of type '<Flag_msg>"
  "task5_msgs/Flag_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flag_msg)))
  "Returns string type for a message object of type 'Flag_msg"
  "task5_msgs/Flag_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flag_msg>)))
  "Returns md5sum for a message object of type '<Flag_msg>"
  "e57ff88f4c17b249531e77b7e8959fdc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flag_msg)))
  "Returns md5sum for a message object of type 'Flag_msg"
  "e57ff88f4c17b249531e77b7e8959fdc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flag_msg>)))
  "Returns full string definition for message of type '<Flag_msg>"
  (cl:format cl:nil "int64 signal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flag_msg)))
  "Returns full string definition for message of type 'Flag_msg"
  (cl:format cl:nil "int64 signal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flag_msg>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flag_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Flag_msg
    (cl:cons ':signal (signal msg))
))
