; Auto-generated. Do not edit!


(cl:in-package digits-msg)


;//! \htmlinclude Segments.msg.html

(cl:defclass <Segments> (roslisp-msg-protocol:ros-message)
  ((digit
    :reader digit
    :initarg :digit
    :type cl:fixnum
    :initform 0)
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Segments (<Segments>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Segments>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Segments)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name digits-msg:<Segments> is deprecated: use digits-msg:Segments instead.")))

(cl:ensure-generic-function 'digit-val :lambda-list '(m))
(cl:defmethod digit-val ((m <Segments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader digits-msg:digit-val is deprecated.  Use digits-msg:digit instead.")
  (digit m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <Segments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader digits-msg:segments-val is deprecated.  Use digits-msg:segments instead.")
  (segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Segments>) ostream)
  "Serializes a message object of type '<Segments>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digit)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Segments>) istream)
  "Deserializes a message object of type '<Segments>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'digit)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Segments>)))
  "Returns string type for a message object of type '<Segments>"
  "digits/Segments")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Segments)))
  "Returns string type for a message object of type 'Segments"
  "digits/Segments")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Segments>)))
  "Returns md5sum for a message object of type '<Segments>"
  "52224b55a09fd5047a73d23a18410ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Segments)))
  "Returns md5sum for a message object of type 'Segments"
  "52224b55a09fd5047a73d23a18410ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Segments>)))
  "Returns full string definition for message of type '<Segments>"
  (cl:format cl:nil "uint8 digit~%uint8[] segments~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Segments)))
  "Returns full string definition for message of type 'Segments"
  (cl:format cl:nil "uint8 digit~%uint8[] segments~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Segments>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Segments>))
  "Converts a ROS message object to a list"
  (cl:list 'Segments
    (cl:cons ':digit (digit msg))
    (cl:cons ':segments (segments msg))
))
