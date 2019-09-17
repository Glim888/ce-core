/// @func ce_ds_list_add_map_unique(list, map)
/// @desc If the map is not in the list, it is added to it.
/// @param {real} list The list to add into.
/// @param {real} map The map to be added.
var _l = argument0;
var _pos = ce_ds_list_add_unique(_l, argument1);
if (_pos == -1)
{
	ds_list_mark_as_map(_l, ds_list_size(_l) - 1);
}