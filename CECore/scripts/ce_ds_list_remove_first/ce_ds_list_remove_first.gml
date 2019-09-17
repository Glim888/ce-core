/// @func ce_ds_list_remove_first(list, value)
/// @desc Removes the first occurence of the value from the list.
/// @param {real} list The id of the list.
/// @param {any} value The value to remove.
/// @return {bool} True if the value was in the list.
var _list = argument0;

var _idx = ds_list_find_index(_list, argument1);
if (_idx != -1)
{
	ds_list_delete(_list, _idx);
	return true;
}

return false;