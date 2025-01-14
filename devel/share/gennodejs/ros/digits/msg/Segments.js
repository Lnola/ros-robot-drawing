// Auto-generated. Do not edit!

// (in-package digits.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Segments {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digit = null;
      this.segments = null;
    }
    else {
      if (initObj.hasOwnProperty('digit')) {
        this.digit = initObj.digit
      }
      else {
        this.digit = 0;
      }
      if (initObj.hasOwnProperty('segments')) {
        this.segments = initObj.segments
      }
      else {
        this.segments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Segments
    // Serialize message field [digit]
    bufferOffset = _serializer.uint8(obj.digit, buffer, bufferOffset);
    // Serialize message field [segments]
    bufferOffset = _arraySerializer.uint8(obj.segments, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Segments
    let len;
    let data = new Segments(null);
    // Deserialize message field [digit]
    data.digit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [segments]
    data.segments = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.segments.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'digits/Segments';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52224b55a09fd5047a73d23a18410ec0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 digit
    uint8[] segments
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Segments(null);
    if (msg.digit !== undefined) {
      resolved.digit = msg.digit;
    }
    else {
      resolved.digit = 0
    }

    if (msg.segments !== undefined) {
      resolved.segments = msg.segments;
    }
    else {
      resolved.segments = []
    }

    return resolved;
    }
};

module.exports = Segments;
