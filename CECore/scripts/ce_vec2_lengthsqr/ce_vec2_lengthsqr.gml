/// @func ce_vec2_lengthsqr(v)
/// @desc Gets squared length of the vector.
/// @param {array} v The vector.
/// @return {real} The vector's squared length.
gml_pragma("forceinline");
var _v = argument0;
var _v0 = _v[0];
var _v1 = _v[1];
return (_v0 * _v0
	+ _v1 * _v1);