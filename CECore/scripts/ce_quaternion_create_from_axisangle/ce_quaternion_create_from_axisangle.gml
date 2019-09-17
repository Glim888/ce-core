/// @func ce_quaternion_create_from_axisangle(axis, angle)
/// @desc Creates a quaternion form the axis an the angle.
/// @param {array} axis A 3D vector representing the axis.
/// @param {real} angle The angle in degrees.
/// @return {array} The created quaternion.
var _axis = argument0;
var _angle = argument1;
var _sinHalfAngle = dsin(_angle * 0.5);
return [
	_axis[0] * _sinHalfAngle,
	_axis[1] * _sinHalfAngle,
	_axis[2] * _sinHalfAngle,
	dcos(_angle * 0.5)
];