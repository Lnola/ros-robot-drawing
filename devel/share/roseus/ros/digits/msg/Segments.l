;; Auto-generated. Do not edit!


(when (boundp 'digits::Segments)
  (if (not (find-package "DIGITS"))
    (make-package "DIGITS"))
  (shadow 'Segments (find-package "DIGITS")))
(unless (find-package "DIGITS::SEGMENTS")
  (make-package "DIGITS::SEGMENTS"))

(in-package "ROS")
;;//! \htmlinclude Segments.msg.html


(defclass digits::Segments
  :super ros::object
  :slots (_digit _segments ))

(defmethod digits::Segments
  (:init
   (&key
    ((:digit __digit) 0)
    ((:segments __segments) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _digit (round __digit))
   (setq _segments __segments)
   self)
  (:digit
   (&optional __digit)
   (if __digit (setq _digit __digit)) _digit)
  (:segments
   (&optional __segments)
   (if __segments (setq _segments __segments)) _segments)
  (:serialization-length
   ()
   (+
    ;; uint8 _digit
    1
    ;; uint8[] _segments
    (* 1    (length _segments)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _digit
       (write-byte _digit s)
     ;; uint8[] _segments
     (write-long (length _segments) s)
     (princ _segments s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _digit
     (setq _digit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _segments
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _segments (make-array n :element-type :char))
     (replace _segments buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get digits::Segments :md5sum-) "52224b55a09fd5047a73d23a18410ec0")
(setf (get digits::Segments :datatype-) "digits/Segments")
(setf (get digits::Segments :definition-)
      "uint8 digit
uint8[] segments
")



(provide :digits/Segments "52224b55a09fd5047a73d23a18410ec0")


