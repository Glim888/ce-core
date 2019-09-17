/// @func ce_ds_list_slice(list[, start[, end]])
/// @desc Creates a copy of a list, taking values from specified range of indices.
/// @param {real} list The id of the list to copy.
/// @param {real} start The starting index.
/// @param {real} end The ending index (not included).
/// @return {real} The id of the created list.
var _list = argument[0];
var _start = (argument_count > 1) ? argument[1] : 0;
var _end = (argument_count > 2) ? argument[2] : ds_list_size(_list);
var _slice = ds_list_create();
for (var i = _start; i < _end; ++i)
{
	ds_list_add(_slice, _list[| i]);
}
return _slice;