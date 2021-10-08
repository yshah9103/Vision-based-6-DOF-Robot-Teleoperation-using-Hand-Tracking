// Auto-generated. Do not edit!

// (in-package franka_core_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EndPointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.O_T_EE = null;
      this.O_F_ext_hat_K = null;
      this.K_F_ext_hat_K = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('O_T_EE')) {
        this.O_T_EE = initObj.O_T_EE
      }
      else {
        this.O_T_EE = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('O_F_ext_hat_K')) {
        this.O_F_ext_hat_K = initObj.O_F_ext_hat_K
      }
      else {
        this.O_F_ext_hat_K = new geometry_msgs.msg.WrenchStamped();
      }
      if (initObj.hasOwnProperty('K_F_ext_hat_K')) {
        this.K_F_ext_hat_K = initObj.K_F_ext_hat_K
      }
      else {
        this.K_F_ext_hat_K = new geometry_msgs.msg.WrenchStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndPointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [O_T_EE] has the right length
    if (obj.O_T_EE.length !== 16) {
      throw new Error('Unable to serialize array field O_T_EE - length must be 16')
    }
    // Serialize message field [O_T_EE]
    bufferOffset = _arraySerializer.float64(obj.O_T_EE, buffer, bufferOffset, 16);
    // Serialize message field [O_F_ext_hat_K]
    bufferOffset = geometry_msgs.msg.WrenchStamped.serialize(obj.O_F_ext_hat_K, buffer, bufferOffset);
    // Serialize message field [K_F_ext_hat_K]
    bufferOffset = geometry_msgs.msg.WrenchStamped.serialize(obj.K_F_ext_hat_K, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndPointState
    let len;
    let data = new EndPointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [O_T_EE]
    data.O_T_EE = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    // Deserialize message field [O_F_ext_hat_K]
    data.O_F_ext_hat_K = geometry_msgs.msg.WrenchStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [K_F_ext_hat_K]
    data.K_F_ext_hat_K = geometry_msgs.msg.WrenchStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += geometry_msgs.msg.WrenchStamped.getMessageSize(object.O_F_ext_hat_K);
    length += geometry_msgs.msg.WrenchStamped.getMessageSize(object.K_F_ext_hat_K);
    return length + 128;
  }

  static datatype() {
    // Returns string type for a message object
    return 'franka_core_msgs/EndPointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '157e46b2d97e94a67549f0fd8090f80c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64[16] O_T_EE # Measured end effector pose in base frame
    
    # ----- Moved ee velocity to robot state, because it is being computed using J*dq. EE vel is not being provided natively
    #float64[6] O_dP_EE_c # Last commanded end effector twist in base frame.
    #float64[6] O_dP_EE_d # Desired end effector twist in base frame.
    #float64[6] O_ddP_EE_c # Last commanded end effector acceleration in base frame.
    
    geometry_msgs/WrenchStamped O_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the base frame
    geometry_msgs/WrenchStamped K_F_ext_hat_K    # Estimated external wrench (force, torque) acting on stiffness frame, expressed relative to the stiffness frame (ee_frame by default)
    
    
    
    
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
    MSG: geometry_msgs/WrenchStamped
    # A wrench with reference coordinate frame and timestamp
    Header header
    Wrench wrench
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndPointState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.O_T_EE !== undefined) {
      resolved.O_T_EE = msg.O_T_EE;
    }
    else {
      resolved.O_T_EE = new Array(16).fill(0)
    }

    if (msg.O_F_ext_hat_K !== undefined) {
      resolved.O_F_ext_hat_K = geometry_msgs.msg.WrenchStamped.Resolve(msg.O_F_ext_hat_K)
    }
    else {
      resolved.O_F_ext_hat_K = new geometry_msgs.msg.WrenchStamped()
    }

    if (msg.K_F_ext_hat_K !== undefined) {
      resolved.K_F_ext_hat_K = geometry_msgs.msg.WrenchStamped.Resolve(msg.K_F_ext_hat_K)
    }
    else {
      resolved.K_F_ext_hat_K = new geometry_msgs.msg.WrenchStamped()
    }

    return resolved;
    }
};

module.exports = EndPointState;
