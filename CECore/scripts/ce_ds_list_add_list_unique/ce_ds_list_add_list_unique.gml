/// @func ce_ds_list_add_list_unique(l1, l2)
/// @desc If the list l2 is not in the list l1, it is added to it.
/// @param {real} l1 The list to add into.
/// @param {real} l2 The list to be added.
var _l1 = argument0;
var _pos = ce_ds_list_add_unique(_l1, argument1);
if (_pos == -1)
{
	ds_list_mark_as_list(_l1, ds_list_size(_l1) - 1);
}