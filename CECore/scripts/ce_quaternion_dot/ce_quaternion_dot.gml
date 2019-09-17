/// @func ce_quaternion_dot(q1, q2)
/// @desc Gets the dot product of the two quaternions.
/// @param {array} q1 The first quaternion.
/// @param {array} q2 The second quaternion.
/// @return {real} The dot product of the two quaternions.
gml_pragma("forceinline");
var _q1 = argument0;
var _q2 = argument1;
return (_q1[0] * _q2[0]
	+ _q1[1] * _q2[1]
	+ _q1[2] * _q2[2]
	+ _q1[3] * _q2[3]);