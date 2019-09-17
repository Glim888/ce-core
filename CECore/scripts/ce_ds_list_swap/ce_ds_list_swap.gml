/// @func ce_ds_list_swap(list, i, j)
/// @desc Swaps values at given indices in the list.
/// @param {real} list The id of the list to swap values within.
/// @param {real} i The first index.
/// @param {real} j The second index.
/// @example
/// ```gml
/// var _list = ds_list_create();
/// ds_list_add(_list, 1, 2, 3);
/// ce_ds_list_swap(_list, 0, 2); // Swaps 1 and 3, making the list `3, 2, 1`.
/// ```
var _l = argument0;
var i = argument1;
var j = argument2;
var _temp = _l[i];
_l[| i] = _l[j];
_l[| j] = _temp;