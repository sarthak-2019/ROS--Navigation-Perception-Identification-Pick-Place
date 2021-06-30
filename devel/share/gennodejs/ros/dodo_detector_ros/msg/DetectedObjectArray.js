// Auto-generated. Do not edit!

// (in-package dodo_detector_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectedObject = require('./DetectedObject.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.detected_objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('detected_objects')) {
        this.detected_objects = initObj.detected_objects
      }
      else {
        this.detected_objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObjectArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [detected_objects]
    // Serialize the length for message field [detected_objects]
    bufferOffset = _serializer.uint32(obj.detected_objects.length, buffer, bufferOffset);
    obj.detected_objects.forEach((val) => {
      bufferOffset = DetectedObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObjectArray
    let len;
    let data = new DetectedObjectArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [detected_objects]
    // Deserialize array length for message field [detected_objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected_objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected_objects[i] = DetectedObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.detected_objects.forEach((val) => {
      length += DetectedObject.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dodo_detector_ros/DetectedObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfb00e28c707bcf2e4252c82ba9b0d6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObjectArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.detected_objects !== undefined) {
      resolved.detected_objects = new Array(msg.detected_objects.length);
      for (let i = 0; i < resolved.detected_objects.length; ++i) {
        resolved.detected_objects[i] = DetectedObject.Resolve(msg.detected_objects[i]);
      }
    }
    else {
      resolved.detected_objects = []
    }

    return resolved;
    }
};

module.exports = DetectedObjectArray;
