/// @func ce_real_to_string(real)
/// @desc Converts a real value to a string without generating trailing zeros
/// after a decimal point.
/// @param {real} real The real value to convert to a string.
/// @return {string} The resulting string.
/// @example
/// ```gml
/// ce_real_to_string(16); // => 16
/// ce_real_to_string(16.870); // => 16.87
/// ```
var _real = argument0;
var _dec = 16; // Maximum decimal places
var _string = string_format(_real, -1, _dec);
var _stringLength = string_length(_string);

do
{
	_string = string_format(_real, -1, --_dec);
	if (string_byte_at(_string, --_stringLength) != 48)
	{
		break;
	}
}
until (_dec == 0);

return _string;