/// @func ce_vec2_min_component(v)
/// @desc Gets the smallest component of the vector.
/// @param {array} v The vector.
/// @return {real} The vetor's smallest component.
/// @example
/// Here the `_min` variable would be equal to `1`.
/// ```gml
/// var _vec = [1, 2];
/// var _min = ce_vec2_min_component(_vec);
/// ```
gml_pragma("forceinline");
var _v = argument0;
return min(_v[0], _v[1]);