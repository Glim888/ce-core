/// @func ce_ds_list_add_map(list, map)
/// @desc Adds the map into the list.
/// @param {real} list The list to add into.
/// @param {real} map The map to be added.
var _l = argument0;
ds_list_add(_l, argument1);
ds_list_mark_as_map(_l, ds_list_size(_l) - 1);