/// @func ce_vec2_multiply(v1, v2)
/// @desc Multiplies the vectors `v1`, `v2` componentwise and stores the result
/// into `v1`.
/// @param {array} v1 The first vector.
/// @param {array} v2 The second vector.
/// @example
/// This would make the vector `_v1` equal to `[3, 8]`.
/// ```gml
/// var _v1 = [1, 2];
/// var _v2 = [3, 4];
/// ce_vec2_multiply(_v1, _v2);
/// ```
var _v1 = argument0;
var _v2 = argument1;
_v1[@ 0] *= _v2[0];
_v1[@ 1] *= _v2[1];