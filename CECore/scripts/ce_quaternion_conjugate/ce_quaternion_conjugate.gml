/// @func ce_quaternion_conjugate(q)
/// @desc Conjugates the quaternion.
/// @param {array} q The quaternion.
var _q = argument0;
_q[@ 0] = -_q[0];
_q[@ 1] = -_q[1];
_q[@ 2] = -_q[2];