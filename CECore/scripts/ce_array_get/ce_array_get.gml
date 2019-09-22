/// @func ce_array_get(array, index[, default])
/// @desc Retrieves a value at given index of an array.
/// @param {array} array The array.
/// @param {real} index The index.
/// @param {any} [default] The default value.
/// @return {any} Value at given index or the default value if is specified and
/// the index does not exist.
/// @example
/// ```gml
/// var _array = [1, 2];
/// ce_array_get(_array, 0); // => 1
/// ce_array_get(_array, 1, 1); // => 2
/// ce_array_get(_array, 2, 3); // => 3
/// ce_array_get(_array, 2); // ERROR!
/// ```
var _array = argument[0];
var _index = argument[1];
var _size = array_length_1d(_array);

if (argument_count > 2
	&& (_index < 0 || _index >= _size))
{
	return argument[2];
}

return _array[_index];