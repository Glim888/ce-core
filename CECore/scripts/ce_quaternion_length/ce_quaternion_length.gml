/// @func ce_quaternion_length(q)
/// @desc Gets the length of the quaternion.
/// @param {array} q The quaternion.
/// @return {real} The length of the quaternion.
gml_pragma("forceinline");
var _q = argument0;
return sqrt(_q[0] * _q[0]
	+ _q[1] * _q[1]
	+ _q[2] * _q[2]
	+ _q[3] * _q[3]);