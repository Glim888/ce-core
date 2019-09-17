/// @func ce_vec3_cross(v1, v2)
/// @desc Gets the cross product of the vectors `v1`, `v2` and stores it to
/// `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
var _v1 = argument0;
var _v2 = argument1;
var _v10 = _v1[0];
var _v11 = _v1[1];
var _v12 = _v1[2];
var _v20 = _v2[0];
var _v21 = _v2[1];
var _v22 = _v2[2];
_v1[@ 0] = _v11*_v22 - _v12*_v21;
_v1[@ 1] = _v12*_v20 - _v10*_v22;
_v1[@ 2] = _v10*_v21 - _v11*_v20;