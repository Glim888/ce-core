/// @func ce_quaternion_subtract(q1, q2)
/// @desc Subtracts quaternion `q2` from `q1` and stores the result into `q1`.
/// @param {array} q1 The quaternion to subtract from.
/// @param {array} q2 The quaternion to subtract.
var _q1 = argument0;
var _q2 = argument1;
_q1[@ 0] -= _q2[0];
_q1[@ 1] -= _q2[1];
_q1[@ 2] -= _q2[2];
_q1[@ 3] -= _q2[3];