/// @func ce_array_find_index(array, value)
/// @desc Finds index at which the array contains the value.
/// @param {array} array The array to search in.
/// @param {any} value The value to search for.
/// @return {real} The index at which the value was found or -1 if the array does
/// not contain the value.
var _arr = argument0;
var _val  = argument1;
var _size = array_length_1d(_arr);
for (var i = 0; i < _size; ++i)
{
	if (_arr[i] == _val)
	{
		return i;
	}
}
return -1;