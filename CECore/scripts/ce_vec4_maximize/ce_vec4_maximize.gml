/// @func ce_vec4_maximize(v1, v2)
/// @desc Gets a vector that is made up of the largest components of the
/// vectors `v1`, `v2` and stores it into `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
/// @example
/// This would make the vector `_v1` equal to `[2, 4, 6, 8]`.
/// ```gml
/// var _v1 = [1, 4, 5, 8];
/// var _v2 = [2, 3, 6, 7];
/// ce_vec4_maximize(_v1, _v2);
/// ```
var _v1 = argument0;
var _v2 = argument1;
_v1[@ 0] = max(_v1[0], _v2[0]);
_v1[@ 1] = max(_v1[1], _v2[1]);
_v1[@ 2] = max(_v1[2], _v2[2]);
_v1[@ 3] = max(_v1[3], _v2[3]);