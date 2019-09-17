/// @func ce_quaternion_lerp(q1, q2, s)
/// @desc Performs a linear interpolation between the quaternions `q1`, `q2`
/// and stores the result to `q1`.
/// @param {array} q1 The first quaternion.
/// @param {array} q2 The second quaternion.
/// @param {real} s The lerping factor.
var _q1 = argument0;
var _q2 = argument1;
var _s = argument2;
_q1[@ 0] = lerp(_q1[0], _q2[0], _s);
_q1[@ 1] = lerp(_q1[1], _q2[1], _s);
_q1[@ 2] = lerp(_q1[2], _q2[2], _s);
_q1[@ 3] = lerp(_q1[3], _q2[3], _s);