; Auto-generated. Do not edit!


(cl:in-package dodo_detector_ros-msg)


;//! \htmlinclude DetectedObject.msg.html

(cl:defclass <DetectedObject> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (tf_id
    :reader tf_id
    :initarg :tf_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (image_x
    :reader image_x
    :initarg :image_x
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (image_y
    :reader image_y
    :initarg :image_y
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (image_height
    :reader image_height
    :initarg :image_height
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (image_width
    :reader image_width
    :initarg :image_width
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass DetectedObject (<DetectedObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dodo_detector_ros-msg:<DetectedObject> is deprecated: use dodo_detector_ros-msg:DetectedObject instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodo_detector_ros-msg:type-val is deprecated.  Use dodo_detector_ros-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'tf_id-val :lambda-list '(m))
(cl:defmethod tf_id-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodo_detector_ros-msg:tf_id-val is deprecated.  Use dodo_detector_ros-msg:tf_id instead.")
  (tf_id m))

(cl:ensure-generic-function 'image_x-val :lambda-list '(m))
(cl:defmethod image_x-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodo_detector_ros-msg:image_x-val is deprecated.  Use dodo_detector_ros-msg:image_x instead.")
  (image_x m))

(cl:ensure-generic-function 'image_y-val :lambda-list '(m))
(cl:defmethod image_y-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodo_detector_ros-msg:image_y-val is deprecated.  Use dodo_detector_ros-msg:image_y instead.")
  (image_y m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodo_detector_ros-msg:image_height-val is deprecated.  Use dodo_detector_ros-msg:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <DetectedObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dodo_detector_ros-msg:image_width-val is deprecated.  Use dodo_detector_ros-msg:image_width instead.")
  (image_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject>) ostream)
  "Serializes a message object of type '<DetectedObject>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_height) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_width) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject>) istream)
  "Deserializes a message object of type '<DetectedObject>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_height) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_width) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject>)))
  "Returns string type for a message object of type '<DetectedObject>"
  "dodo_detector_ros/DetectedObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject)))
  "Returns string type for a message object of type 'DetectedObject"
  "dodo_detector_ros/DetectedObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject>)))
  "Returns md5sum for a message object of type '<DetectedObject>"
  "e5e23e630fb1ee6640a981b4e23121ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject)))
  "Returns md5sum for a message object of type 'DetectedObject"
  "e5e23e630fb1ee6640a981b4e23121ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject>)))
  "Returns full string definition for message of type '<DetectedObject>"
  (cl:format cl:nil "std_msgs/String type~%std_msgs/String tf_id~%std_msgs/Int32 image_x~%std_msgs/Int32 image_y~%std_msgs/Int32 image_height~%std_msgs/Int32 image_width~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject)))
  "Returns full string definition for message of type 'DetectedObject"
  (cl:format cl:nil "std_msgs/String type~%std_msgs/String tf_id~%std_msgs/Int32 image_x~%std_msgs/Int32 image_y~%std_msgs/Int32 image_height~%std_msgs/Int32 image_width~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_height))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject
    (cl:cons ':type (type msg))
    (cl:cons ':tf_id (tf_id msg))
    (cl:cons ':image_x (image_x msg))
    (cl:cons ':image_y (image_y msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':image_width (image_width msg))
))
