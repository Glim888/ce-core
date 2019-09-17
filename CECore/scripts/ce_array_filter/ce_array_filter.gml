/// @func ce_array_filter(array, callback)
/// @desc Creates a new array containing values from the given array for which the
/// callback script returns true.
/// @param {array} array The array to filter.
/// @param {real} callback The script that returns `true` to keep the value or
/// `false` to discard it. Takes the original value as the first argument and
/// optionally it's index as the second argument.
/// @example
/// This code creates a new array `[0, 2, 4]`.
/// ```gml
/// var _even = ce_array_filter([0, 1, 2, 3, 4], ce_real_is_even);
/// ```
var _arr = argument0;
var _callback = argument1;
var _size = array_length_1d(_arr);
var _temp = array_create(_size, 0);
var j = 0;
for (var i = 0; i < _size; ++i)
{
	var _val = _arr[i];
	if (script_execute(_callback, _val, i))
	{
		_temp[j++] = _val;
	}
}
var _array = array_create(j, 0);
array_copy(_array, 0, _temp, 0, j);
return _array;