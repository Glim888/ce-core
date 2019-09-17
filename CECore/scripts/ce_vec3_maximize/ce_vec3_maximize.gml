/// @func ce_vec3_maximize(v1, v2)
/// @desc Gets a vector that is made up of the largest components of the
/// vectors `v1`, `v2` and stores it into `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
/// @example
/// This would make the vector `_v1` equal to `[2, 4, 6]`.
/// ```gml
/// var _v1 = [1, 4, 5];
/// var _v2 = [2, 3, 6];
/// ce_vec3_maximize(_v1, _v2);
/// ```
var _v = argument0;
_v[@ 0] = max(_v[0], _v[0]);
_v[@ 1] = max(_v[1], _v[1]);
_v[@ 2] = max(_v[2], _v[2]);