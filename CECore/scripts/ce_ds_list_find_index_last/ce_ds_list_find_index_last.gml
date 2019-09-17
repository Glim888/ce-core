/// @func ce_ds_list_find_index_last(list, value)
/// @desc Finds the last index at which the list contains the value.
/// @param {real} list The id of the list.
/// @param {any} value The value to search for.
/// @return {real} The index at which the value was found or -1 if the list does
/// not contain the value.
var _list = argument0;
var _value = argument1;
for (var i = ds_list_size(_list) - 1; i >= 0; --i)
{
	if (_list[| i] == _value)
	{
		return i;
	}
}
return -1;