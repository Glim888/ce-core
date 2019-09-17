/// @func ce_array_find_index_last(array, value)
/// @desc Finds the last index at which the array contains the value.
/// @param {array} array The array to search in.
/// @param {any} value The value to search for.
/// @return {real} The index at which the value was found or -1 if the array does
/// not contain the value.
var _arr = argument0;
var _val = argument1;
for (var i = array_length_1d(_arr) - 1; i >= 0; --i)
{
	if (_arr[i] == _val)
	{
		return i;
	}
}
return -1;