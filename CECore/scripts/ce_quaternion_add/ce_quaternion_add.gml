/// @func ce_quaternion_add(q1, q2)
/// @desc Adds the quaternions `q1`, `q2` and stores the result to `q1`.
/// @param {array} q1 The first quaternion.
/// @param {array} q2 The second quaternion.
var _q1 = argument0;
var _q2 = argument1;
_q1[@ 0] += _q2[0];
_q1[@ 1] += _q2[1];
_q1[@ 2] += _q2[2];
_q1[@ 3] += _q2[3];