/// @func ce_array_create_range(from, to)
/// @desc Creates a new array with values in range <from, to>.
/// @param {int} from The starting value. Must be less or equal to argument to.
/// @param {int} to The ending value. Must be greater or equal to argument from.
/// @return {array} The created array.
/// @example
/// This will create an array `[2, 3, 4, 5, 6]`.
/// ```gml
/// var _arr = ce_array_create_range(2, 6);
/// ```
var _from = argument0;
var _to = argument1;
var _size = _to - _from + 1;
var _array = array_create(_size, 0);
for (var i = 0; i < _size; ++i)
{
	_array[@ i] = _from++;
}
return _array;