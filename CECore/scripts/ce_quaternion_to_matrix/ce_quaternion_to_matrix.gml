/// @func ce_quaternion_to_matrix(q)
/// @desc Creates a rotation matrix from the quaternion.
/// @param {array} q The quaternion.
/// @return {array} The created rotation matrix.
gml_pragma("forceinline");
var _q = argument0;
var _q0 = _q[0];
var _q1 = _q[1];
var _q2 = _q[2];
var _q3 = _q[3];
var _q0sqr = _q0 * _q0;
var _q1sqr = _q1 * _q1;
var _q2sqr = _q2 * _q2;
var _q0q1 = _q0 * _q1;
var _q0q2 = _q0 * _q2
var _q3q2 = _q3 * _q2;
var _q1q2 = _q1 * _q2;
var _q3q0 = _q3 * _q0;
var _q3q1 = _q3 * _q1;
return [
	1 - 2 * (_q1sqr + _q2sqr), 2 * (_q0q1 + _q3q2), 2 * (_q0q2 - _q3q1), 0,
	2 * (_q0q1 - _q3q2), 1 - 2 * (_q0sqr + _q2sqr), 2 * (_q1q2 + _q3q0), 0,
	2 * (_q0q2 + _q3q1), 2 * (_q1q2 - _q3q0), 1 - 2 * (_q0sqr + _q1sqr), 0,
	0, 0, 0, 1
];