/// @func ce_ds_list_reduce_right(list, callback[, initialValue])
/// @desc Reduces the list from right to left, applying the callback script on
/// each value, resulting into a single value.
/// @param {real} list The id of the list.
/// @param {real} callback The reducer script. It takes the accumulator (which
/// is the `initialValue` at start) as the first argument, the current value as
/// the second argument and optionally the current index as the third argument.
/// @param {any} [initialValue] The initial value. If not specified, the last
/// value in the list is taken.
/// @return {any} The result of the reduction.
/// @example
/// ```gml
/// // Here the script scr_reduce_subtract(a, b) returns a - b
/// var _l = ds_list_create();
/// ds_list_add(_l, 1, 2, 3, 4);
/// var _r1 = ce_ds_list_reduce(_l, scr_reduce_subtract); // Results to -8
/// var _r2 = ce_ds_list_reduce_right(_l, scr_reduce_subtract); // Results to -2
/// ```
/// @see ce_ds_list_reduce
var _list = argument[0];
var _callback = argument[1];
var i = ds_list_size(_list) - 1;
var _accumulator = (argument_count > 2) ? argument[2] : _list[| i--];

for (/**/; i >= 0; --i)
{
	_accumulator = script_execute(_callback, _accumulator, _list[| i], i);
}

return _accumulator;