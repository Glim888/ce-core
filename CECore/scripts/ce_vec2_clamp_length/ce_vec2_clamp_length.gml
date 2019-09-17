/// @func ce_vec2_clamp_length(v, min, max)
/// @desc Clamps vector's length between `min` and `max`.
/// @param {array} v The vector.
/// @param {real} min The minimum vector length.
/// @param {real} max The maximum vector length.
var _v = argument0;
ce_vec2_normalize(_v);
ce_vec2_scale(_v, clamp(ce_vec2_length(_v), argument1, argument2));