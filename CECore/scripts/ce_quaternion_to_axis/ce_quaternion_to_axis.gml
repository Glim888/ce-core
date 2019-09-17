/// @func ce_quaternion_to_axis(q)
/// @desc Creates 3D axis from the quaternion.
/// @param {array} q The quaternion.
/// @return {array} The created axis as `[x, y, z]`.
var _q = argument0;
var _sinThetaInv = 1 / sin(arccos(_q[3]));
return [
	_q[0] * _sinThetaInv,
	_q[1] * _sinThetaInv,
	_q[2] * _sinThetaInv
];