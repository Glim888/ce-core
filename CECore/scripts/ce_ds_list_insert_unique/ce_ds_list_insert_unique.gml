/// @func ce_ds_list_insert_unique(list, value, position)
/// @desc If the value is not in the list, it is inserted to it at given
/// position.
/// @param {real} list The id of the list.
/// @param {any} value The value to be added.
/// @param {real} position The index to insert the value at.
/// @return {real} The index on which has been the value found or -1.
var _list = argument0;
var _value = argument1;
var _pos = ds_list_find_index(_list, _value);
if (_pos == -1)
{
	ds_list_insert(_list, argument2, _value);
}
return _pos;