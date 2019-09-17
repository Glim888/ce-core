/// @func ce_vec2_transform(v, m)
/// @desc Transforms a 4D vector `[vX, vY, 0, 1]` by the matrix `m` and stores
/// `[x, y]` of the resulting vector to `v`.
/// @param {array} v The vector to transform.
/// @param {array} m The transform matrix.
var _v = argument0;
var _w = [_v[0], _v[1], 0, 1];
ce_vec4_transform(_w, argument1);
_v[@ 0] = _w[0];
_v[@ 1] = _w[1];