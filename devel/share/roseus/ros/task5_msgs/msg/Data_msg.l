;; Auto-generated. Do not edit!


(when (boundp 'task5_msgs::Data_msg)
  (if (not (find-package "TASK5_MSGS"))
    (make-package "TASK5_MSGS"))
  (shadow 'Data_msg (find-package "TASK5_MSGS")))
(unless (find-package "TASK5_MSGS::DATA_MSG")
  (make-package "TASK5_MSGS::DATA_MSG"))

(in-package "ROS")
;;//! \htmlinclude Data_msg.msg.html


(defclass task5_msgs::Data_msg
  :super ros::object
  :slots (_x1 _y1 _z1 _x2 _y2 _z2 _x3 _y3 _z3 ))

(defmethod task5_msgs::Data_msg
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    ((:z1 __z1) 0.0)
    ((:x2 __x2) 0.0)
    ((:y2 __y2) 0.0)
    ((:z2 __z2) 0.0)
    ((:x3 __x3) 0.0)
    ((:y3 __y3) 0.0)
    ((:z3 __z3) 0.0)
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   (setq _z1 (float __z1))
   (setq _x2 (float __x2))
   (setq _y2 (float __y2))
   (setq _z2 (float __z2))
   (setq _x3 (float __x3))
   (setq _y3 (float __y3))
   (setq _z3 (float __z3))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:z1
   (&optional __z1)
   (if __z1 (setq _z1 __z1)) _z1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:y2
   (&optional __y2)
   (if __y2 (setq _y2 __y2)) _y2)
  (:z2
   (&optional __z2)
   (if __z2 (setq _z2 __z2)) _z2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:y3
   (&optional __y3)
   (if __y3 (setq _y3 __y3)) _y3)
  (:z3
   (&optional __z3)
   (if __z3 (setq _z3 __z3)) _z3)
  (:serialization-length
   ()
   (+
    ;; float64 _x1
    8
    ;; float64 _y1
    8
    ;; float64 _z1
    8
    ;; float64 _x2
    8
    ;; float64 _y2
    8
    ;; float64 _z2
    8
    ;; float64 _x3
    8
    ;; float64 _y3
    8
    ;; float64 _z3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z1
       (sys::poke _z1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y2
       (sys::poke _y2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z2
       (sys::poke _z2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y3
       (sys::poke _y3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z3
       (sys::poke _z3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y1
     (setq _y1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z1
     (setq _z1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y2
     (setq _y2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z2
     (setq _z2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x3
     (setq _x3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y3
     (setq _y3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z3
     (setq _z3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get task5_msgs::Data_msg :md5sum-) "6a702617d285f6d4f32694556f4f3012")
(setf (get task5_msgs::Data_msg :datatype-) "task5_msgs/Data_msg")
(setf (get task5_msgs::Data_msg :definition-)
      "# the pose of the object

float64 x1
float64 y1
float64 z1


float64 x2
float64 y2
float64 z2


float64 x3
float64 y3
float64 z3




")



(provide :task5_msgs/Data_msg "6a702617d285f6d4f32694556f4f3012")


