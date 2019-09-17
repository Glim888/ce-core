/// @func ce_vec4_create_barycentric(v1, v2, v3, f, g)
/// @desc Creates a new vector using barycentric coordinates, following formula
/// `v1 + f(v2-v1) + g(v3-v1)`.
/// @param {array} v1 The first point of triangle.
/// @param {array} v2 The second point of triangle.
/// @param {array} v3 The third point of triangle.
/// @param {real} f The first weighting factor.
/// @param {real} g The second weighting factor.
/// @return {array} The created vector.
var _v1 = argument0;
var _v2 = argument1;
var _v3 = argument2;
var _f = argument3;
var _g = argument4;
var _v10 = _v1[0];
var _v11 = _v1[1];
var _v12 = _v1[2];
var _v13 = _v1[3];
return [
	_v10 + _f*(_v2[0]-_v10) + _g*(_v3[0]-_v10),
	_v11 + _f*(_v2[1]-_v11) + _g*(_v3[1]-_v11),
	_v12 + _f*(_v2[2]-_v12) + _g*(_v3[2]-_v12),
	_v13 + _f*(_v2[3]-_v13) + _g*(_v3[3]-_v13),
];