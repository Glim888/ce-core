/// @func ce_array_swap(array, i, j)
/// @desc Swaps values at given indices in the array.
/// @param {array} array The array to swap values within.
/// @param {real} i The first index.
/// @param {real} j The second index.
/// @example
/// ```gml
/// var _array = [1, 2, 3];
/// ce_array_swap(_array, 0, 2); // Swaps 1 and 3, making the array [3, 2, 1].
/// ```
var _arr = argument0;
var i = argument1;
var j = argument2;
var _temp = _arr[i];
_arr[@ i] = _arr[j];
_arr[@ j] = _temp;