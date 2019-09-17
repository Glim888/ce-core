/// @func ce_vec3_normalize(v)
/// @desc Normalizes the vector (makes the vector's length equal to `1`).
/// @param {array} v The vector to be normalized.
var _v = argument0;
var _lengthSqr = ce_vec3_lengthsqr(_v);
if (_lengthSqr > 0)
{
	var _n = 1 / sqrt(_lengthSqr);
	_v[@ 0] *= _n;
	_v[@ 1] *= _n;
	_v[@ 2] *= _n;
}