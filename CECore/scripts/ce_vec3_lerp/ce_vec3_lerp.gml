/// @func ce_vec3_lerp(v1, v2, s)
/// @desc Linearly interpolates between vectors `v1`, `v2` and stores the
/// resulting vector into `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
/// @param {real} s The interpolation factor.
var _v1 = argument0;
var _v2 = argument1;
var _s = argument2;
_v1[@ 0] = lerp(_v1[0], _v2[0], _s);
_v1[@ 1] = lerp(_v1[1], _v2[1], _s);
_v1[@ 2] = lerp(_v1[2], _v2[2], _s);