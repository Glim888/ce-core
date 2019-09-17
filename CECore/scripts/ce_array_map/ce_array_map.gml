/// @func ce_array_map(array, callback)
/// @desc Creates a new array containing the results of calling the script on
/// every value in the given array.
/// @param {array} array The array to map.
/// @param {real} callback The script that produces a value of the new array,
/// taking the original value as the first argument and optionally it's index
/// as the second argument.
var _arr = argument0;
var _callback = argument1;
var _size = array_length_1d(_arr);
var _array = array_create(_size, 0)
for (var i = 0; i < _size; ++i)
{
	_array[i] = script_execute(_arr, _callback[| i], i);
}
return _array;