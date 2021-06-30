;; Auto-generated. Do not edit!


(when (boundp 'dodo_detector_ros::DetectedObjectArray)
  (if (not (find-package "DODO_DETECTOR_ROS"))
    (make-package "DODO_DETECTOR_ROS"))
  (shadow 'DetectedObjectArray (find-package "DODO_DETECTOR_ROS")))
(unless (find-package "DODO_DETECTOR_ROS::DETECTEDOBJECTARRAY")
  (make-package "DODO_DETECTOR_ROS::DETECTEDOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dodo_detector_ros::DetectedObjectArray
  :super ros::object
  :slots (_header _detected_objects ))

(defmethod dodo_detector_ros::DetectedObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:detected_objects __detected_objects) (let (r) (dotimes (i 0) (push (instance dodo_detector_ros::DetectedObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _detected_objects __detected_objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:detected_objects
   (&rest __detected_objects)
   (if (keywordp (car __detected_objects))
       (send* _detected_objects __detected_objects)
     (progn
       (if __detected_objects (setq _detected_objects (car __detected_objects)))
       _detected_objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; dodo_detector_ros/DetectedObject[] _detected_objects
    (apply #'+ (send-all _detected_objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; dodo_detector_ros/DetectedObject[] _detected_objects
     (write-long (length _detected_objects) s)
     (dolist (elem _detected_objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; dodo_detector_ros/DetectedObject[] _detected_objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_objects (let (r) (dotimes (i n) (push (instance dodo_detector_ros::DetectedObject :init) r)) r))
     (dolist (elem- _detected_objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dodo_detector_ros::DetectedObjectArray :md5sum-) "cfb00e28c707bcf2e4252c82ba9b0d6c")
(setf (get dodo_detector_ros::DetectedObjectArray :datatype-) "dodo_detector_ros/DetectedObjectArray")
(setf (get dodo_detector_ros::DetectedObjectArray :definition-)
      "Header header
dodo_detector_ros/DetectedObject[] detected_objects
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
MSG: dodo_detector_ros/DetectedObject
std_msgs/String type
std_msgs/String tf_id
std_msgs/Int32 image_x
std_msgs/Int32 image_y
std_msgs/Int32 image_height
std_msgs/Int32 image_width

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :dodo_detector_ros/DetectedObjectArray "cfb00e28c707bcf2e4252c82ba9b0d6c")


