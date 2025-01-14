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
  "08e2a726d1cb2f85c287fa3c5a12465e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Count-request)))
  "Returns md5sum for a message object of type 'Count-request"
  "08e2a726d1cb2f85c287fa3c5a12465e")
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
   (digit
    :reader digit
    :initarg :digit
    :type cl:integer
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

(cl:ensure-generic-function 'digit-val :lambda-list '(m))
(cl:defmethod digit-val ((m <Count-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader digits-srv:digit-val is deprecated.  Use digits-srv:digit instead.")
  (digit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Count-response>) ostream)
  "Serializes a message object of type '<Count-response>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'digit)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Count-response>) istream)
  "Deserializes a message object of type '<Count-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'digit) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "08e2a726d1cb2f85c287fa3c5a12465e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Count-response)))
  "Returns md5sum for a message object of type 'Count-response"
  "08e2a726d1cb2f85c287fa3c5a12465e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Count-response>)))
  "Returns full string definition for message of type '<Count-response>"
  (cl:format cl:nil "int32 count~%int32 digit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Count-response)))
  "Returns full string definition for message of type 'Count-response"
  (cl:format cl:nil "int32 count~%int32 digit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Count-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Count-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Count-response
    (cl:cons ':count (count msg))
    (cl:cons ':digit (digit msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Count)))
  'Count-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Count)))
  'Count-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Count)))
  "Returns string type for a service object of type '<Count>"
  "digits/Count")