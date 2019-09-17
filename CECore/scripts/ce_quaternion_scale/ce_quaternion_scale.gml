/// @func ce_quaternion_scale(q, s)
/// @desc Scales a quaternion by the value.
/// @param {array} q The quaternion.
/// @param {real} s The value to scale the quaternion by.
var _q = argument0;
var _s = argument1;
_q[@ 0] *= _s;
_q[@ 1] *= _s;
_q[@ 2] *= _s;
_q[@ 3] *= _s;