/// @func ce_quaternion_create_look_rotation(forward, up)
/// @desc Creates a quaternion with the specified forward and up vectors. These
/// vectors must not be parallel! If they are, then an identity quaternion
/// will be returned.
/// @param {array} forward The 3D forward unit vector.
/// @param {array} up The 3D up unit vector.
/// @return {array} An array representing the quaternion.
var _forward = argument0;
var _up = argument1;
var _rot1 = ce_quaternion_create_fromto_rotation([0, 0, 1], _forward);
var _right = ce_vec3_clone(_forward);
ce_vec3_cross(_right, _up);
_up = ce_vec3_clone(_right);
ce_vec3_cross(_up, _forward);
ce_vec3_normalize(_up);
var _newUp = [0, 1, 0];
ce_quaternion_rotate(_rot1, _newUp);
var _rot2 = ce_quaternion_create_fromto_rotation(_newUp, _up);
ce_quaternion_multiply(_rot2, _rot1);
return _rot2;