/// @func ce_vec4_frac(v)
/// @desc Sets each component of the input vector to it's decimal part.
/// @param {array} v The input vector.
var _v = argument0;
_v[@ 0] = frac(_v[0]);
_v[@ 1] = frac(_v[1]);
_v[@ 2] = frac(_v[2]);
_v[@ 3] = frac(_v[3]);