/// @func ce_byte_array_to_hex(bytes)
/// @desc Converts an array of number between 0..255 into a string of
/// hexadecimal representations of each number.
/// @param {array} bytes The array with numbers.
/// @return {string} The resulting string.
var _bytes = argument0;
var _str = "";
var _size = array_length_1d(_bytes);
for (var i = 0; i < _size; ++i)
{
	_str += ce_byte_to_hex(_bytes[i]);
}
return _str;