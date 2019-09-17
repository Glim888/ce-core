/// @func ce_vec3_ceil(v)
/// @desc Ceils each component of the vector.
/// @param {array} v The vector to ceil.
var _v = argument0;
_v[@ 0] = ceil(_v[0]);
_v[@ 1] = ceil(_v[1]);
_v[@ 2] = ceil(_v[2]);