/// @func ce_array_reverse(array)
/// @desc Creates a new array with values from the given array, but in a reverse
/// order.
/// @param {array} array The array to reverse.
/// @return {array} The created array.
/// @example
/// This will create an array `[3, 2, 1]`.
/// ```gml
/// var _reversed = ce_array_reverse([1, 2, 3]);
/// ```
var _arr = argument0;
var _size = array_length_1d(_arr);
var _reversed = array_create(_size, 0)
for (var i = 0; i < _size; ++i)
{
	_reversed[i] = _arr[_size - i - 1];
}
return _reversed;