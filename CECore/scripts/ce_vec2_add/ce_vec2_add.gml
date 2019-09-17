/// @func ce_vec2_add(v1, v2)
/// @desc Adds vectors `v1`, `v2` and stores the result into `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
var _v1 = argument0;
var _v2 = argument1;
_v1[@ 0] += _v2[0];
_v1[@ 1] += _v2[1];