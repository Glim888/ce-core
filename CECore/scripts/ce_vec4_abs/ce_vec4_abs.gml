/// @func ce_vec4_abs(v)
/// @desc Sets vector's components to their absolute value.
/// @param {array} v The vector.
var _v = argument0;
_v[@ 0] = abs(_v[0]);
_v[@ 1] = abs(_v[1]);
_v[@ 2] = abs(_v[2]);
_v[@ 3] = abs(_v[3]);