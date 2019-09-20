/// @func ce_string_format(string[, data])
/// @desc Replaces all occurences of `${identifier}` in the string with given
/// data.
/// @param {string} string The string to format.
/// @param {array/real} [data] An array or an id of a map containing the data.
/// If an array is passed, the identifiers must be numbers or variable names of
/// the calling instance. If a map is passed, the identifiers must be keys of
/// the map or variable names of the calling instance. Using unknown identifiers
/// will result in error. Only maps with strings as keys are supported.
/// @return {string} The resulting string.
/// @example
/// ```
/// // Prints "Hello, Some!"
/// username = "Some";
/// show_debug_message(ce_string_format("Hello, ${username}!"));
/// // Prints "You have 100 HP."
/// show_debug_message(ce_string_format("You have ${0} HP.", [100]));
/// // Prints "Hello, Dude!"
/// var _data = ds_map_create();
/// _data[? "username"] = "Dude";
/// show_debug_message(ce_string_format("Hello, ${username}!", _data));
/// ds_map_destroy(_data);
/// ```
// TODO: Add support for `other.` etc?
var _stringOriginal = argument[0]
var _str = _stringOriginal;
var _data = (argument_count > 1) ? argument[1] : undefined;
var _isMap = is_real(_data);
var _isArray = is_array(_data);
var _result = "";

while (true)
{
	var _start = string_pos("${", _str);
	if (_start == 0)
	{
		break;
	}
	_result += string_copy(_str, 1, _start - 1);
	_str = string_delete(_str, 1, _start + 1);
	var _end = string_pos("}", _str);
	if (_end == 0)
	{
		return _stringOriginal;
	}
	--_end;
	var _varName = string_copy(_str, 1, _end);
	var _added = false;
	if (_isMap
		&& ds_map_exists(_data, _varName))
	{
		_result += string(_data[? _varName]);
		_added = true;
	}
	else if (_isArray
		&& string_digits(_varName) == _varName)
	{
		_result += string(_data[real(_varName)]);
		_added = true
	}
	if (!_added)
	{
		_result += string(variable_instance_get(id, _varName));
	}
	_str = string_delete(_str, 1, _end + 1);
}

_result += _str;

return _result;