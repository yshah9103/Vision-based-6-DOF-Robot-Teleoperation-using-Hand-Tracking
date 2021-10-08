// Auto-generated. Do not edit!

// (in-package franka_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let control_msgs = _finder('control_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointControllerStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.controller_name = null;
      this.names = null;
      this.joint_controller_states = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('controller_name')) {
        this.controller_name = initObj.controller_name
      }
      else {
        this.controller_name = '';
      }
      if (initObj.hasOwnProperty('names')) {
        this.names = initObj.names
      }
      else {
        this.names = [];
      }
      if (initObj.hasOwnProperty('joint_controller_states')) {
        this.joint_controller_states = initObj.joint_controller_states
      }
      else {
        this.joint_controller_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControllerStates
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [controller_name]
    bufferOffset = _serializer.string(obj.controller_name, buffer, bufferOffset);
    // Serialize message field [names]
    bufferOffset = _arraySerializer.string(obj.names, buffer, bufferOffset, null);
    // Serialize message field [joint_controller_states]
    // Serialize the length for message field [joint_controller_states]
    bufferOffset = _serializer.uint32(obj.joint_controller_states.length, buffer, bufferOffset);
    obj.joint_controller_states.forEach((val) => {
      bufferOffset = control_msgs.msg.JointControllerState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControllerStates
    let len;
    let data = new JointControllerStates(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [controller_name]
    data.controller_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [names]
    data.names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [joint_controller_states]
    // Deserialize array length for message field [joint_controller_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_controller_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_controller_states[i] = control_msgs.msg.JointControllerState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.controller_name.length;
    object.names.forEach((val) => {
      length += 4 + val.length;
    });
    object.joint_controller_states.forEach((val) => {
      length += control_msgs.msg.JointControllerState.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'franka_core_msgs/JointControllerStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'edf5e0c6d3f96d827825a101e071c998';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string controller_name
    
    string[]  names        # Joint names order for command
    
    control_msgs/JointControllerState[] joint_controller_states 
    
    
    
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
    MSG: control_msgs/JointControllerState
    # This message presents current controller state of one joint.
    
    # Header timestamp should be update time of controller state
    Header header
    
    # The set point, that is, desired state.
    float64 set_point
    
    # Current value of the process (ie: latest sensor measurement on the controlled value).
    float64 process_value
    
    # First time-derivative of the process value.
    float64 process_value_dot
    
    # The error of the controlled value, essentially process_value - set_point (for a regular PID implementation).
    float64 error
    
    # Time between two consecutive updates/execution of the control law.
    float64 time_step
    
    # Current output of the controller.
    float64 command
    
    # Current PID parameters of the controller.
    float64 p
    float64 i
    float64 d
    float64 i_clamp
    bool antiwindup
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControllerStates(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.controller_name !== undefined) {
      resolved.controller_name = msg.controller_name;
    }
    else {
      resolved.controller_name = ''
    }

    if (msg.names !== undefined) {
      resolved.names = msg.names;
    }
    else {
      resolved.names = []
    }

    if (msg.joint_controller_states !== undefined) {
      resolved.joint_controller_states = new Array(msg.joint_controller_states.length);
      for (let i = 0; i < resolved.joint_controller_states.length; ++i) {
        resolved.joint_controller_states[i] = control_msgs.msg.JointControllerState.Resolve(msg.joint_controller_states[i]);
      }
    }
    else {
      resolved.joint_controller_states = []
    }

    return resolved;
    }
};

module.exports = JointControllerStates;
