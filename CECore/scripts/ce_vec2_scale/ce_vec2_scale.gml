/// @func ce_vec2_scale(v, s)
/// @desc Scales the vector's components by the given value.
/// @param {array} v The vector.
/// @param {real} s The value to scale the components by.
var _v = argument0;
var _s = argument1;
_v[@ 0] *= _s;
_v[@ 1] *= _s;