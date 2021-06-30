;; Auto-generated. Do not edit!


(when (boundp 'dodo_detector_ros::DetectedObject)
  (if (not (find-package "DODO_DETECTOR_ROS"))
    (make-package "DODO_DETECTOR_ROS"))
  (shadow 'DetectedObject (find-package "DODO_DETECTOR_ROS")))
(unless (find-package "DODO_DETECTOR_ROS::DETECTEDOBJECT")
  (make-package "DODO_DETECTOR_ROS::DETECTEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dodo_detector_ros::DetectedObject
  :super ros::object
  :slots (_type _tf_id _image_x _image_y _image_height _image_width ))

(defmethod dodo_detector_ros::DetectedObject
  (:init
   (&key
    ((:type __type) (instance std_msgs::String :init))
    ((:tf_id __tf_id) (instance std_msgs::String :init))
    ((:image_x __image_x) (instance std_msgs::Int32 :init))
    ((:image_y __image_y) (instance std_msgs::Int32 :init))
    ((:image_height __image_height) (instance std_msgs::Int32 :init))
    ((:image_width __image_width) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _type __type)
   (setq _tf_id __tf_id)
   (setq _image_x __image_x)
   (setq _image_y __image_y)
   (setq _image_height __image_height)
   (setq _image_width __image_width)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:tf_id
   (&rest __tf_id)
   (if (keywordp (car __tf_id))
       (send* _tf_id __tf_id)
     (progn
       (if __tf_id (setq _tf_id (car __tf_id)))
       _tf_id)))
  (:image_x
   (&rest __image_x)
   (if (keywordp (car __image_x))
       (send* _image_x __image_x)
     (progn
       (if __image_x (setq _image_x (car __image_x)))
       _image_x)))
  (:image_y
   (&rest __image_y)
   (if (keywordp (car __image_y))
       (send* _image_y __image_y)
     (progn
       (if __image_y (setq _image_y (car __image_y)))
       _image_y)))
  (:image_height
   (&rest __image_height)
   (if (keywordp (car __image_height))
       (send* _image_height __image_height)
     (progn
       (if __image_height (setq _image_height (car __image_height)))
       _image_height)))
  (:image_width
   (&rest __image_width)
   (if (keywordp (car __image_width))
       (send* _image_width __image_width)
     (progn
       (if __image_width (setq _image_width (car __image_width)))
       _image_width)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _type
    (send _type :serialization-length)
    ;; std_msgs/String _tf_id
    (send _tf_id :serialization-length)
    ;; std_msgs/Int32 _image_x
    (send _image_x :serialization-length)
    ;; std_msgs/Int32 _image_y
    (send _image_y :serialization-length)
    ;; std_msgs/Int32 _image_height
    (send _image_height :serialization-length)
    ;; std_msgs/Int32 _image_width
    (send _image_width :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _type
       (send _type :serialize s)
     ;; std_msgs/String _tf_id
       (send _tf_id :serialize s)
     ;; std_msgs/Int32 _image_x
       (send _image_x :serialize s)
     ;; std_msgs/Int32 _image_y
       (send _image_y :serialize s)
     ;; std_msgs/Int32 _image_height
       (send _image_height :serialize s)
     ;; std_msgs/Int32 _image_width
       (send _image_width :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; std_msgs/String _tf_id
     (send _tf_id :deserialize buf ptr-) (incf ptr- (send _tf_id :serialization-length))
   ;; std_msgs/Int32 _image_x
     (send _image_x :deserialize buf ptr-) (incf ptr- (send _image_x :serialization-length))
   ;; std_msgs/Int32 _image_y
     (send _image_y :deserialize buf ptr-) (incf ptr- (send _image_y :serialization-length))
   ;; std_msgs/Int32 _image_height
     (send _image_height :deserialize buf ptr-) (incf ptr- (send _image_height :serialization-length))
   ;; std_msgs/Int32 _image_width
     (send _image_width :deserialize buf ptr-) (incf ptr- (send _image_width :serialization-length))
   ;;
   self)
  )

(setf (get dodo_detector_ros::DetectedObject :md5sum-) "e5e23e630fb1ee6640a981b4e23121ce")
(setf (get dodo_detector_ros::DetectedObject :datatype-) "dodo_detector_ros/DetectedObject")
(setf (get dodo_detector_ros::DetectedObject :definition-)
      "std_msgs/String type
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



(provide :dodo_detector_ros/DetectedObject "e5e23e630fb1ee6640a981b4e23121ce")


