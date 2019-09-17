/// @func ce_vec4_transform(v, m)
/// @desc Transforms the vector by the matrix.
/// @param {array} v The vector to transform.
/// @param {array} m The transform matrix.
var _vec = argument0;
var _mat = argument1;

var _vec0 = _vec[0];
var _vec1 = _vec[1];
var _vec2 = _vec[2];
var _vec3 = _vec[3];

_vec[@ 0] = _mat[ 0]*_vec0 + _mat[ 4]*_vec1 + _mat[ 8]*_vec2 + _mat[12]*_vec3;
_vec[@ 1] = _mat[ 1]*_vec0 + _mat[ 5]*_vec1 + _mat[ 9]*_vec2 + _mat[13]*_vec3;
_vec[@ 2] = _mat[ 2]*_vec0 + _mat[ 6]*_vec1 + _mat[10]*_vec2 + _mat[14]*_vec3;
_vec[@ 3] = _mat[ 3]*_vec0 + _mat[ 7]*_vec1 + _mat[11]*_vec2 + _mat[15]*_vec3;