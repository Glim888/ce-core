/// @func ce_string_join_list(string, list)
/// @desc Joins values in the list putting the string between each two
/// consecutive values.
/// @param {string} string The string to put between two consecutive values.
/// @param {real} list The id of the list of values that you want to join.
/// @return {string} The resulting string.
/// @example
/// This will show a message saying "Numbers: 1, 2, 3, 4".
/// ```gml
/// var _numbers = ds_list_create();
/// ds_list_add(_numbers, 1, 2, 3, 4);
/// show_message("Numbers: " + ce_string_join_list(", ", _numbers));
/// ```
var _string = argument0;
var _list = argument1;
var _size = ds_list_size(_list);

if (_size == 0)
{
	return "";
}

var _str = "";
var i = 0;
for (/**/; i < _size - 1; ++i)
{
	_str += string(_list[| i]) + _string;
}
_str += string(_list[| i]);
return _str;