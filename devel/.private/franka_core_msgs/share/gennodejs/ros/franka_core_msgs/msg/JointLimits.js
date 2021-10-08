// Auto-generated. Do not edit!

// (in-package franka_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointLimits {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.position_lower = null;
      this.position_upper = null;
      this.velocity = null;
      this.accel = null;
      this.effort = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('position_lower')) {
        this.position_lower = initObj.position_lower
      }
      else {
        this.position_lower = [];
      }
      if (initObj.hasOwnProperty('position_upper')) {
        this.position_upper = initObj.position_upper
      }
      else {
        this.position_upper = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = [];
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointLimits
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [position_lower]
    bufferOffset = _arraySerializer.float64(obj.position_lower, buffer, bufferOffset, null);
    // Serialize message field [position_upper]
    bufferOffset = _arraySerializer.float64(obj.position_upper, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [accel]
    bufferOffset = _arraySerializer.float64(obj.accel, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointLimits
    let len;
    let data = new JointLimits(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [position_lower]
    data.position_lower = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position_upper]
    data.position_upper = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [accel]
    data.accel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.position_lower.length;
    length += 8 * object.position_upper.length;
    length += 8 * object.velocity.length;
    length += 8 * object.accel.length;
    length += 8 * object.effort.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'franka_core_msgs/JointLimits';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4c445eb2c9324525a704c84ca1e7598';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # names of the joints
    string[] joint_names
    
    # lower bound on the angular position in radians
    float64[] position_lower
    
    # upper bound on the angular position in radians
    float64[] position_upper
    
    # symmetric maximum joint velocity in radians/second
    float64[] velocity
    
    # symmetric maximum joint acceleration in radians/second^2
    float64[] accel
    
    # symmetric maximum joint torque in Newton-meters
    float64[] effort
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointLimits(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.position_lower !== undefined) {
      resolved.position_lower = msg.position_lower;
    }
    else {
      resolved.position_lower = []
    }

    if (msg.position_upper !== undefined) {
      resolved.position_upper = msg.position_upper;
    }
    else {
      resolved.position_upper = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.accel !== undefined) {
      resolved.accel = msg.accel;
    }
    else {
      resolved.accel = []
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = []
    }

    return resolved;
    }
};

module.exports = JointLimits;
