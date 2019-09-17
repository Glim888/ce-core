/// @func ce_quaternion_normalize(q)
/// @desc Normalizes the quaternion.
/// @param {array} q The quaternion.
var _q = argument0;
var _lengthSqr = ce_quaternion_lengthsqr(_q);
if (_lengthSqr <= 0)
{
	return;
}
var _n = 1 / sqrt(_lengthSqr);
_q[@ 0] *= _n;
_q[@ 1] *= _n;
_q[@ 2] *= _n;
_q[@ 3] *= _n;