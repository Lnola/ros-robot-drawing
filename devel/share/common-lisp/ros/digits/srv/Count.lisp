; Auto-generated. Do not edit!


(cl:in-package digits-srv)


;//! \htmlinclude Count-request.msg.html

(cl:defclass <Count-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Count-request (<Count-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Count-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Count-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name digits-srv:<Count-request> is deprecated: use digits-srv:Count-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Count-request>) ostream)
  "Serializes a message object of type '<Count-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Count-request>) istream)
  "Deserializes a message object of type '<Count-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Count-request>)))
  "Returns string type for a service object of type '<Count-request>"
  "digits/CountRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count-request)))
  "Returns string type for a service object of type 'Count-request"
  "digits/CountRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Count-request>)))
  "Returns md5sum for a message object of type '<Count-request>"
  "74eb533b32c09c7c3df3f24d5d8745d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Count-request)))
  "Returns md5sum for a message object of type 'Count-request"
  "74eb533b32c09c7c3df3f24d5d8745d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Count-request>)))
  "Returns full string definition for message of type '<Count-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Count-request)))
  "Returns full string definition for message of type 'Count-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Count-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Count-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Count-request
))
;//! \htmlinclude Count-response.msg.html

(cl:defclass <Count-response> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass Count-response (<Count-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Count-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Count-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name digits-srv:<Count-response> is deprecated: use digits-srv:Count-response instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Count-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader digits-srv:count-val is deprecated.  Use digits-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Count-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader digits-srv:timestamp-val is deprecated.  Use digits-srv:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Count-response>) ostream)
  "Serializes a message object of type '<Count-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Count-response>) istream)
  "Deserializes a message object of type '<Count-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Count-response>)))
  "Returns string type for a service object of type '<Count-response>"
  "digits/CountResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count-response)))
  "Returns string type for a service object of type 'Count-response"
  "digits/CountResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Count-response>)))
  "Returns md5sum for a message object of type '<Count-response>"
  "74eb533b32c09c7c3df3f24d5d8745d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Count-response)))
  "Returns md5sum for a message object of type 'Count-response"
  "74eb533b32c09c7c3df3f24d5d8745d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Count-response>)))
  "Returns full string definition for message of type '<Count-response>"
  (cl:format cl:nil "int32 count~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Count-response)))
  "Returns full string definition for message of type 'Count-response"
  (cl:format cl:nil "int32 count~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Count-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Count-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Count-response
    (cl:cons ':count (count msg))
    (cl:cons ':timestamp (timestamp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Count)))
  'Count-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Count)))
  'Count-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count)))
  "Returns string type for a service object of type '<Count>"
  "digits/Count")