/// @func ce_vec4_minimize(v1, v2)
/// @desc Gets a vector that is made up of the smallest components of the
/// vectors `v1`, `v2` and stores it into `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
/// @example
/// This would make the vector `_v1` equal to `[1, 3, 5, 7]`.
/// ```gml
/// var _v1 = [1, 4, 5, 8];
/// var _v2 = [2, 3, 6, 7];
/// ce_vec4_minimize(_v1, _v2);
/// ```
var _v1 = argument0;
var _v2 = argument1;
_v1[@ 0] = min(_v1[0], _v2[0]);
_v1[@ 1] = min(_v1[1], _v2[1]);
_v1[@ 2] = min(_v1[2], _v2[2]);
_v1[@ 3] = min(_v1[3], _v2[3]);