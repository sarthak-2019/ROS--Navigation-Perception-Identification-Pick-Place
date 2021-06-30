// Auto-generated. Do not edit!

// (in-package dodo_detector_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.tf_id = null;
      this.image_x = null;
      this.image_y = null;
      this.image_height = null;
      this.image_width = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('tf_id')) {
        this.tf_id = initObj.tf_id
      }
      else {
        this.tf_id = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('image_x')) {
        this.image_x = initObj.image_x
      }
      else {
        this.image_x = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('image_y')) {
        this.image_y = initObj.image_y
      }
      else {
        this.image_y = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObject
    // Serialize message field [type]
    bufferOffset = std_msgs.msg.String.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [tf_id]
    bufferOffset = std_msgs.msg.String.serialize(obj.tf_id, buffer, bufferOffset);
    // Serialize message field [image_x]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.image_x, buffer, bufferOffset);
    // Serialize message field [image_y]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.image_y, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.image_height, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.image_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObject
    let len;
    let data = new DetectedObject(null);
    // Deserialize message field [type]
    data.type = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [tf_id]
    data.tf_id = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_x]
    data.image_x = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_y]
    data.image_y = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.type);
    length += std_msgs.msg.String.getMessageSize(object.tf_id);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dodo_detector_ros/DetectedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5e23e630fb1ee6640a981b4e23121ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DetectedObject(null);
    if (msg.type !== undefined) {
      resolved.type = std_msgs.msg.String.Resolve(msg.type)
    }
    else {
      resolved.type = new std_msgs.msg.String()
    }

    if (msg.tf_id !== undefined) {
      resolved.tf_id = std_msgs.msg.String.Resolve(msg.tf_id)
    }
    else {
      resolved.tf_id = new std_msgs.msg.String()
    }

    if (msg.image_x !== undefined) {
      resolved.image_x = std_msgs.msg.Int32.Resolve(msg.image_x)
    }
    else {
      resolved.image_x = new std_msgs.msg.Int32()
    }

    if (msg.image_y !== undefined) {
      resolved.image_y = std_msgs.msg.Int32.Resolve(msg.image_y)
    }
    else {
      resolved.image_y = new std_msgs.msg.Int32()
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = std_msgs.msg.Int32.Resolve(msg.image_height)
    }
    else {
      resolved.image_height = new std_msgs.msg.Int32()
    }

    if (msg.image_width !== undefined) {
      resolved.image_width = std_msgs.msg.Int32.Resolve(msg.image_width)
    }
    else {
      resolved.image_width = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = DetectedObject;
