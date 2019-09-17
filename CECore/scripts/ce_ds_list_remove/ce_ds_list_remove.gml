/// @func ce_ds_list_remove(list, value)
/// @desc Removes all occurrences of the value from the list.
/// @param {real} list The id of the list.
/// @param {any} value The value to remove.
var _list = argument0;
var _value = argument1;

for (var i = ds_list_size(_list) - 1; i >= 0; --i)
{
	if (_list[| i] == _value)
	{
		ds_list_delete(_list, i);
	}
}