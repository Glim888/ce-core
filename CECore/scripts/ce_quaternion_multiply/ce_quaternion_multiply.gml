/// @func ce_quaternion_multiply(q1, q2)
/// @desc Multiplies the quaternions `q1`, `q2` and stores the result to `q1`.
/// @param {array} q1 The first quaternion.
/// @param {array} q2 The second quaternion.
var _q1 = argument0;
var _q2 = argument1;
var _q10 = _q1[0];
var _q11 = _q1[1];
var _q12 = _q1[2];
var _q13 = _q1[3];
var _q20 = _q2[0];
var _q21 = _q2[1];
var _q22 = _q2[2];
var _q23 = _q2[3];

_q1[@ 0] = _q11 * _q22 - _q12 * _q21
	+ _q13 * _q20 + _q10 * _q23;
_q1[@ 1] = _q12 * _q20 - _q10 * _q22
	+ _q13 * _q21 + _q11 * _q23;
_q1[@ 2] = _q10 * _q21 - _q11 * _q20
	+ _q13 * _q22 + _q12 * _q23;
_q1[@ 3] = _q13 * _q23 - _q10 * _q20
	- _q11 * _q21 - _q12 * _q22;