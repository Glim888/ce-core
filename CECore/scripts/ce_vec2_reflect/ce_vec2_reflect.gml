/// @func ce_vec2_reflect(v, n)
/// @desc Reflects the incident vector `v` off the normal vector `n`.
/// @param {array} v The incident vector.
/// @param {array} v The normal vector.
var _v = argument0;
var _n = argument1;
var _dot = ce_vec2_dot(_v, _n);
_v[@ 0] = _v[0] - 2 * _dot * _n[0];
_v[@ 1] = _v[1] - 2 * _dot * _n[1];