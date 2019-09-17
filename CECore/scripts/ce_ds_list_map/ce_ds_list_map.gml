/// @func ce_ds_list_map(list, callback)
/// @desc Creates a new list containing the results of calling the script on
/// every value in the given list.
/// @param {real} list The id of the list.
/// @param {real} callback The script that produces a value of the new list,
/// taking the original value as the first argument and optionally it's index
/// as the second argument.
var _l = argument0;
var _callback = argument1;
var _list = ds_list_create();
var _size = ds_list_size(_l);
for (var i = 0; i < _size; ++i)
{
	ds_list_add(_list, script_execute(_callback, _l[| i], i));
}
return _list;