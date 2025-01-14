;; Auto-generated. Do not edit!


(when (boundp 'digits::Count)
  (if (not (find-package "DIGITS"))
    (make-package "DIGITS"))
  (shadow 'Count (find-package "DIGITS")))
(unless (find-package "DIGITS::COUNT")
  (make-package "DIGITS::COUNT"))
(unless (find-package "DIGITS::COUNTREQUEST")
  (make-package "DIGITS::COUNTREQUEST"))
(unless (find-package "DIGITS::COUNTRESPONSE")
  (make-package "DIGITS::COUNTRESPONSE"))

(in-package "ROS")





(defclass digits::CountRequest
  :super ros::object
  :slots ())

(defmethod digits::CountRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass digits::CountResponse
  :super ros::object
  :slots (_count _digit ))

(defmethod digits::CountResponse
  (:init
   (&key
    ((:count __count) 0)
    ((:digit __digit) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   (setq _digit (round __digit))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:digit
   (&optional __digit)
   (if __digit (setq _digit __digit)) _digit)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ;; int32 _digit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;; int32 _digit
       (write-long _digit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _digit
     (setq _digit (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass digits::Count
  :super ros::object
  :slots ())

(setf (get digits::Count :md5sum-) "08e2a726d1cb2f85c287fa3c5a12465e")
(setf (get digits::Count :datatype-) "digits/Count")
(setf (get digits::Count :request) digits::CountRequest)
(setf (get digits::Count :response) digits::CountResponse)

(defmethod digits::CountRequest
  (:response () (instance digits::CountResponse :init)))

(setf (get digits::CountRequest :md5sum-) "08e2a726d1cb2f85c287fa3c5a12465e")
(setf (get digits::CountRequest :datatype-) "digits/CountRequest")
(setf (get digits::CountRequest :definition-)
      "---
int32 count
int32 digit
")

(setf (get digits::CountResponse :md5sum-) "08e2a726d1cb2f85c287fa3c5a12465e")
(setf (get digits::CountResponse :datatype-) "digits/CountResponse")
(setf (get digits::CountResponse :definition-)
      "---
int32 count
int32 digit
")



(provide :digits/Count "08e2a726d1cb2f85c287fa3c5a12465e")


