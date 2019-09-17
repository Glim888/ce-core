/// @func ce_matrix_create_from_rows(r0, r1, r2, r3)
/// @desc Creates a matrix with specified rows.
/// @param {array} r0 The first row of the matrix.
/// @param {array} r1 The second row of the matrix.
/// @param {array} r2 The third row of the matrix.
/// @param {array} r3 The fourth row of the matrix.
/// @return {array} The created matrix.
gml_pragma("forceinline");
var _r0 = argument0;
var _r1 = argument1;
var _r2 = argument2;
var _r3 = argument3;
return [
	_r0[0], _r1[0], _r2[0], _r3[0],
	_r0[1], _r1[1], _r2[1], _r3[1],
	_r0[2], _r1[2], _r2[2], _r3[2],
	_r0[3], _r1[3], _r2[3], _r3[3]
];