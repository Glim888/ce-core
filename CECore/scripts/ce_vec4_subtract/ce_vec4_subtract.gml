/// @func ce_vec4_subtract(v1, v2)
/// @desc Subtracts vector `v2` from `v1` and stores the result into `v1`.
/// @param {array} v1 The vector to subtract from.
/// @param {array} v2 The vector to subtract.
var _v1 = argument0;
var _v2 = argument1;
_v1[@ 0] -= _v2[0];
_v1[@ 1] -= _v2[1];
_v1[@ 2] -= _v2[2];
_v1[@ 3] -= _v2[3];