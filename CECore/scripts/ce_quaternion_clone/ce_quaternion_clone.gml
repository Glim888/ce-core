/// @func ce_quaternion_clone(v)
/// @desc Creates a clone of the quaternion.
/// @param {array} v The quaternion.
/// @return {array} The created quaternion.
gml_pragma("forceinline");
var _v = argument0;
return [_v[0], _v[1], _v[2], _v[3]];