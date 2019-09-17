/// @func ce_array_reduce_right(array, callback[, initialValue])
/// @desc Reduces the array from right to left, applying the callback script on
/// each value, resulting into a single value.
/// @param {array} array The array to reduce.
/// @param {real} callback The reducer script. It takes the accumulator (which
/// is the `initialValue` at start) as the first argument, the current value as
/// the second argument and optionally the current index as the third argument.
/// @param {any} [initialValue] The initial value. If not specified, the last
/// value in the array is taken.
/// @return {any} The result of the reduction.
/// @example
/// ```gml
/// // Here the script scr_reduce_subtract(a, b) returns a - b
/// var _a = [1, 2, 3, 4];
/// var _r1 = ce_array_reduce(_a, scr_reduce_subtract); // Results to -8
/// var _r2 = ce_array_reduce_right(_a, scr_reduce_subtract); // Results to -2
/// ```
/// @see ce_array_reduce
var _array = argument[0];
var _callback = argument[1];
var i = array_length_1d(_array) - 1;
var _accumulator = (argument_count > 2) ? argument[2] : _array[i--];

for (/**/; i >= 0; --i)
{
	_accumulator = script_execute(_callback, _accumulator, _array[i], i);
}

return _accumulator;