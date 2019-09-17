/// @func ce_ds_list_add_list(l1, l2)
/// @desc Adds the list l2 into the list l1.
/// @param {real} l1 The list to add into.
/// @param {real} l2 The list to be added.
var _l1 = argument0;
ds_list_add(_l1, argument1);
ds_list_mark_as_list(_l1, ds_list_size(_l1) - 1);