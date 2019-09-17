/// @func ce_ds_list_insert_map(list, pos, map)
/// @desc Inserts the map into the list at the given position.
/// @param {real} list The list to inserted into.
/// @param {real} pos The index to insert the list at.
/// @param {real} map The map to be inserted.
var _list = argument0;
var _pos = argument1;
ds_list_insert(_list, _pos, argument2);
ds_list_mark_as_map(_list, _pos);