/// @func ce_ds_list_append(l1, l2)
/// @desc Adds all values from the list l2 to the end of the list l1.
/// @param {real} l1 The id of the list to add values to.
/// @param {real} l2 The id of the list to read values from.
/// @example
/// ```gml
/// var _l1 = ds_list_create();
/// ds_list_add(_l1, 1, 2, 3);
/// var _l2 = ds_list_create();
/// ds_list_add(_l1, 3, 4, 5);
/// // The list _l1 now contains values 1, 2, 3, 3, 4, 5. The _l2 stays
/// // the same.
/// ```
var _l1 = argument0;
var _l2 = argument1;
var _size = ds_list_size(_l2);
for (var i = 0; i < _size; ++i)
{
	ds_list_add(_l1, _l2[| i]);
}