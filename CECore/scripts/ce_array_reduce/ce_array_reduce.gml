/// @func ce_array_reduce(array, callback[, initialValue])
/// @desc Reduces the array from left to right, applying the callback script on
/// each value, resulting into a single value.
/// @param {array} array The array to reduce.
/// @param {real} callback The reducer script. It takes the accumulator (which
/// is the `initialValue` at start) as the first argument, the current value as
/// the second argument and optionally the current index as the third argument.
/// @param {any} [initialValue] The initial value. If not specified, the first
/// value in the array is taken.
/// @return {any} The result of the reduction.
/// @example
/// ```gml
/// // Here the script scr_reduce_add(a, b) returns a + b
/// var _a = [1, 2, 3, 4];
/// var _r1 = ce_array_reduce(_a, scr_reduce_add); // Results to 10
/// var _r2 = ce_array_reduce(_a, scr_reduce_add, 5); // Results to 15
/// ```
/// @see ce_array_reduce_right
var _array = argument[0];
var _callback = argument[1];
var i = 0;
var _accumulator = (argument_count > 2) ? argument[2] : _array[i++];
var _size = array_length_1d(_array);

for (/**/; i < _size; ++i)
{
	_accumulator = script_execute(_callback, _accumulator, _array[i], i);
}

return _accumulator;