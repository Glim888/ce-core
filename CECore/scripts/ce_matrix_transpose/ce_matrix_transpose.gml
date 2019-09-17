/// @func ce_matrix_transpose(m)
/// @desc Transposes the matrix.
/// @param {array} m The matrix to be transposed.
var _m = argument0;
var _c = ce_matrix_clone(_m);
_m[@ 0] = _c[ 0]; _m[@ 4] = _c[ 1]; _m[@ 8] = _c[ 2]; _m[@ 12] = _c[ 3];
_m[@ 1] = _c[ 4]; _m[@ 5] = _c[ 5]; _m[@ 9] = _c[ 6]; _m[@ 13] = _c[ 7];
_m[@ 2] = _c[ 8]; _m[@ 6] = _c[ 9]; _m[@ 10] = _c[10]; _m[@ 14] = _c[11];
_m[@ 3] = _c[12]; _m[@ 7] = _c[13]; _m[@ 11] = _c[14]; _m[@ 15] = _c[15];