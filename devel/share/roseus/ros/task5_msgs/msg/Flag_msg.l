;; Auto-generated. Do not edit!


(when (boundp 'task5_msgs::Flag_msg)
  (if (not (find-package "TASK5_MSGS"))
    (make-package "TASK5_MSGS"))
  (shadow 'Flag_msg (find-package "TASK5_MSGS")))
(unless (find-package "TASK5_MSGS::FLAG_MSG")
  (make-package "TASK5_MSGS::FLAG_MSG"))

(in-package "ROS")
;;//! \htmlinclude Flag_msg.msg.html


(defclass task5_msgs::Flag_msg
  :super ros::object
  :slots (_signal ))

(defmethod task5_msgs::Flag_msg
  (:init
   (&key
    ((:signal __signal) 0)
    )
   (send-super :init)
   (setq _signal (round __signal))
   self)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:serialization-length
   ()
   (+
    ;; int64 _signal
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _signal
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _signal (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _signal) (= (length (_signal . bv)) 2)) ;; bignum
              (write-long (ash (elt (_signal . bv) 0) 0) s)
              (write-long (ash (elt (_signal . bv) 1) -1) s))
             ((and (class _signal) (= (length (_signal . bv)) 1)) ;; big1
              (write-long (elt (_signal . bv) 0) s)
              (write-long (if (>= _signal 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _signal s)(write-long (if (>= _signal 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _signal
#+(or :alpha :irix6 :x86_64)
      (setf _signal (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _signal (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get task5_msgs::Flag_msg :md5sum-) "e57ff88f4c17b249531e77b7e8959fdc")
(setf (get task5_msgs::Flag_msg :datatype-) "task5_msgs/Flag_msg")
(setf (get task5_msgs::Flag_msg :definition-)
      "int64 signal

")



(provide :task5_msgs/Flag_msg "e57ff88f4c17b249531e77b7e8959fdc")


