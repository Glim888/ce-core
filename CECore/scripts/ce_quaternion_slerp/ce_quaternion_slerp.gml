/// @func ce_quaternion_slerp(q1, q2, s)
/// @desc Performs a spherical linear interpolation between the quaternions
/// `q1`, `q2` and stores the result to `q1`.
/// @param {array} q1 The first quaternion.
/// @param {array} q2 The second quaternion.
/// @param {real} s The slerping factor.
var _q1 = argument0;
var _q2 = argument1;
var _s = argument2;
var _q3;

var _dot = ce_quaternion_dot(_q1, _q2);
if (_dot < 0)
{
	_dot = -_dot;
	_q3 = ce_quaternion_clone(_q2);
	ce_quaternion_scale(_q3, -1); 
}
else
{
	_q3 = _q2;
}

if (_dot < 0.95)
{
	var _angle = arccos(_dot);
	ce_quaternion_scale(_q1, dsin(_angle * (1 - _s)));
	ce_quaternion_scale(_q3, dsin(_angle * _s));
	ce_quaternion_add(_q1, _q3);
	ce_quaternion_multiply(_q1, dsin(_angle));
}
else
{
	ce_quaternion_lerp(_q1, _q2, _s);
}