/// @func ce_vec4_max_component(v)
/// @desc Gets the largest component of the vector.
/// @param {array} v The vector.
/// @return {real} The vetor's largest component.
/// @example
/// Here the `_max` variable would be equal to `4`.
/// ```gml
/// var _vec = [1, 2, 3, 4];
/// var _max = ce_vec4_max_component(_vec);
/// ```
gml_pragma("forceinline");
var _v = argument0;
return max(_v[0], _v[1], _v[2], _v[3]);