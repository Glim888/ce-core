/// @func ce_string_explode(string, delimiter)
/// @desc Splits the string on every occurence of the delimiter and puts
/// the resulting substrings into an array.
/// @param {string} string The string to split.
/// @param {string} delimiter The string to split on.
/// @return {array} The array of substrings.
/// @example
/// This creates an array `["Hello", " World!"]`.
/// ```
/// string_explode("Hello, World!", ",");
/// ```
var _str = argument0;
var _delimiter = argument1;
var _count = string_count(_delimiter, _str);
var _arr = array_create(_count + 1, "");
var _from = 1;
var i = 0;

for (/**/; i < _count; ++i)
{
	var _to = string_pos(_delimiter, _str);
	_arr[i] = string_copy(_str, _from, _to - _from);
	_from = _to + 1;
}

_arr[i] = string_copy(_str, _from, string_length(_str) - _from + 1);

return _arr;