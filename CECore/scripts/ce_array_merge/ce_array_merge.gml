/// @func ce_array_merge(a1, a2)
/// @desc Merges two arrays into a new one, appending values from the second
/// array to the end of the first array.
/// @param {array} a1 The id of the first list.
/// @param {array} a2 The id of the second list.
/// @return {array} The created array.
/// @example
/// The array `_a3` will contain values values `1, 2, 3, 3, 4, 5`.
/// ```gml
/// var _a1 = [1, 2, 3];
/// var _a2 = [3, 4, 5];
/// var _a3 = ce_array_merge(_a1, _a2);
/// ```
var _a1 = argument0;
var _a2 = argument1;
var _s1 = array_length_1d(_a1);
var _s2 = array_length_1d(_a2);
var _merged = array_create(_s1 + _s2, 0);
array_copy(_merged, 0, _a1, 0, _s1);
array_copy(_merged, _s1, _a2, 0, _s2);
return _merged;