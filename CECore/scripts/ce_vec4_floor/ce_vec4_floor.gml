/// @func ce_vec4_floor(v)
/// @desc Floors each component of the vector.
/// @param {array} v The vector to floor.
var _v = argument0;
_v[@ 0] = floor(_v[0]);
_v[@ 1] = floor(_v[1]);
_v[@ 2] = floor(_v[2]);
_v[@ 3] = floor(_v[3]);