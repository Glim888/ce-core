/// @func ce_string_join_array(string, array)
/// @desc Joins values in the array putting the string between each two
/// consecutive values.
/// @param {string} string The string to put between two consecutive values.
/// @param {array} array An array of values that you want to join.
/// @return {string} The resulting string.
/// @example
/// This will show a message saying "Numbers: 1, 2, 3, 4".
/// ```gml
/// show_message("Numbers: " + ce_string_join_array(", ", [1, 2, 3, 4]));
/// ```
var _string = argument0;
var _array = argument1;
var _size = array_length_1d(_array);

if (_size == 0)
{
	return "";
}

var _str = "";
var i = 0;
for (/**/; i < _size - 1; ++i)
{
	_str += string(_array[i]) + _string;
}
_str += string(_array[i]);
return _str;