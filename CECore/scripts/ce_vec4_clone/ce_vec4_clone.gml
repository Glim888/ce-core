/// @func ce_vec4_clone(v)
/// @desc Creates a clone of the vector.
/// @param {array} v The vector.
/// @return {array} The created clone.
gml_pragma("forceinline");
var _v = argument0;
return [_v[0], _v[1], _v[2], _v[3]];