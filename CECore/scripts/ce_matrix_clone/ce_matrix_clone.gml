/// @func ce_matrix_clone(m)
/// @desc Creates a clone of the matrix.
/// @param {array} m The matrix to create a clone of.
/// @return {array} The created matrix.
gml_pragma("forceinline");
var _m = argument0;
return [
	_m[ 0], _m[ 1], _m[ 2], _m[ 3],
	_m[ 4], _m[ 5], _m[ 6], _m[ 7],
	_m[ 8], _m[ 9], _m[10], _m[11],
	_m[12], _m[13], _m[14], _m[15]
];