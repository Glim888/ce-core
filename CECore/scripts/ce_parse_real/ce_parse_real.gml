/// @func ce_parse_real(string)
/// @desc Parses a real number from a string.
/// @param {string} string The string to parse the number from.
/// @return {real/string} The parsed number or NaN if the string does not
/// represent a number.
var _string = argument0;
var _stringLength = string_length(_string);

var _a;
_a[1] = "";
_a[0] = "0";

var _j = 0,
var _s = 1,
var _char = "";

for (var i = 1; i <= _stringLength; ++i)
{
	_char = string_char_at(_string, i);

	if (_char == string_digits(_char))
	{
		_a[_j] += _char;
	}
	else if (_char == "+" && _a[0] == "0" && _j == 0)
	{
		// Do nothing...
	}
	else if (_char == "-" && _a[0] == "0" && _j == 0)
	{
		_s = -_s;
	}
	else if (_char == "." && _j == 0)
	{
		++_j;
	}
	else if (_char != "")
	{
		return NaN; // String does not represent a real value...
	}
}

var _ra1 = (_a[1] != "") ? real(_a[1]) : 0;

return (_s * abs(real(_a[0]) + _ra1 / power(10, string_length(_a[1]))));