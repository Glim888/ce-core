/// @func ce_vec2_frac(v)
/// @desc Sets each component of the input vector to it's decimal part.
/// @param {array} v The input vector.
var _v = argument0;
_v[@ 0] = frac(_v[0]);
_v[@ 1] = frac(_v[1]);