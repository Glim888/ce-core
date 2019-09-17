/// @func ce_vec3_project(vector, screen, worldViewProjection)
/// @desc Projects the vector from world space into screen space.
/// @param {array} vector The vector.
/// @param {array} screen An array containing `[screenWidth, screenHeight]`.
/// @param {array} worldViewProjection The world * view * projection matrix.
var _v = argument0;
var _screen = argument1;
var _mat = argument2;
var _vec = [_v[0], _v[1], _v[2], 1];
ce_vec4_transform(_vec, _mat);
var _s = 1 / _vec[3];
_vec[0] *= _s;
_vec[1] *= _s;
_v[@ 0] = (_vec[0] * 0.5 + 0.5) * _screen[0];
_v[@ 1] = (1 - (_vec[1] * 0.5 + 0.5)) * _screen[1];
_v[@ 2] = _vec[2];