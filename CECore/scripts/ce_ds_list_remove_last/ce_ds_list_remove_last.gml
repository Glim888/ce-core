/// @func ce_ds_list_remove_last(list, value)
/// @desc Removes the last occurrence of the value from the list.
/// @param {real} list The id of the list.
/// @param {any} value The value to remove.
/// @param {bool} True if the value was in the list.
var _list = argument0;
var _value = argument1;

for (var i = ds_list_size(_list) - 1; i >= 0; --i)
{
	if (_list[| i] == _value)
	{
		ds_list_delete(_list, i);
		return true;
	}
}

return false;