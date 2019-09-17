/// @func ce_quaternion_lengthsqr(q)
/// @desc Gets the squared length of the quaternion.
/// @param {array} q An array representing the quaternion.
/// @return {real} The squared length of the quaternion.
gml_pragma("forceinline");
var _q = argument0;
var _q0 = _q[0];
var _q1 = _q[1];
var _q2 = _q[2];
var _q3 = _q[3];
return (_q0 * _q0
	+ _q1 * _q1
	+ _q2 * _q2
	+ _q3 * _q3);