/// @func ce_ds_list_filter(list, callback)
/// @desc Creates a new list containing values from the given list for which the
/// callback script returns true.
/// @param {real} list The id of the list.
/// @param {real} callback The script that returns `true` to keep the value or
/// `false` to discard it. Takes the original value as the first argument and
/// optionally it's index as the second argument.
var _l = argument0;
var _callback = argument1;
var _list = ds_list_create();
var _size = ds_list_size(_l);
for (var i = 0; i < _size; ++i)
{
	var _val = _l[| i];
	if (script_execute(_callback, _val, i))
	{
		ds_list_add(_list, _val);
	}
}
return _list;