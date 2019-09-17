/// @func ce_matrix_build_lookat(from, to, up)
/// @desc Builds a look-at matrix from given vec3.
/// @param {array} from Camera's position vector.
/// @param {array} to Camera's target position.
/// @param {array} up Camera's up vector.
/// @return {array} The created matrix.
gml_pragma("forceinline");
var _from = argument0;
var _to = argument1;
var _up = argument2;
return matrix_build_lookat(
	_from[0], _from[1], _from[2],
	_to[0], _to[1], _to[2],
	_up[0], _up[1], _up[2]);