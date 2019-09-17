/// @func ce_ds_list_add_unique(list, value)
/// @desc If the value is not in the list, it is added to it.
/// @param {real} list The id of the list.
/// @param {any} value The value to be added.
/// @return {real} The index on which has the value been found or -1.
var _l = argument0;
var _v = argument1;
var _pos = ds_list_find_index(_l, _v);
if (_pos == -1)
{
	ds_list_add(_l, _v);
}
return _pos;