/// @func ce_vec3_unproject(vector, screen, invWorldViewProjection)
/// @desc Unprojects the vector from screen space to world space.
/// @param {array} vector The vector in screen space.
/// @param {array} screen An array containing `[screenWidth, screenHeight]`.
/// @param {array} invWorldViewProjection The inverse world * view * projection
/// matrix.
var _v = argument0;
var _screen = argument1;
var _vector = [
	(_v[0] / _screen[0]) * 2 - 1,
	1 - (_v[1] / _screen[1]) * 2,
	_v[2],
	1
];
ce_vec4_transform(_vector, argument2);
_v[@ 0] = _vector[0];
_v[@ 1] = _vector[1];
_v[@ 2] = _vector[2];