/// @func ce_matrix_create_from_columns(c0, c1, c2, c3)
/// @desc Creates a matrix with specified columns.
/// @param {array} c0 The first column of the matrix.
/// @param {array} c1 The second column of the matrix.
/// @param {array} c2 The third column of the matrix.
/// @param {array} c3 The fourth column of the matrix.
/// @return {array} The created matrix.
gml_pragma("forceinline");
var _c0 = argument0;
var _c1 = argument1;
var _c2 = argument2;
var _c3 = argument3;
return [
	_c0[0], _c0[1], _c0[2], _c0[3],
	_c1[0], _c1[1], _c1[2], _c1[3],
	_c2[0], _c2[1], _c2[2], _c2[3],
	_c3[0], _c3[1], _c3[2], _c3[3]
];