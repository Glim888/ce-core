/// @func ce_ds_list_reduce(list, callback[, initialValue])
/// @desc Reduces the list from left to right, applying the callback script on
/// each value, resulting into a single value.
/// @param {real} list The id of the list.
/// @param {real} callback The reducer script. It takes the accumulator (which
/// is the `initialValue` at start) as the first argument, the current value as
/// the second argument and optionally the current index as the third argument.
/// @param {any} [initialValue] The initial value. If not specified, the first
/// value in the list is taken.
/// @return {any} The result of the reduction.
/// @example
/// ```gml
/// // Here the script scr_reduce_add(a, b) returns a + b
/// var _l = ds_list_create();
/// ds_list_add(_l, 1, 2, 3, 4);
/// var _r1 = ce_ds_list_reduce(_l, scr_reduce_add); // Results to 10
/// var _r2 = ce_ds_list_reduce(_l, scr_reduce_add, 5); // Results to 15
/// ```
/// @see ce_ds_list_reduce_right
var _list = argument[0];
var _callback = argument[1];
var i = 0;
var _accumulator = (argument_count > 2) ? argument[2] : _list[| i++];
var _size = ds_list_size(_list);

for (/**/; i < _size; ++i)
{
	_accumulator = script_execute(_callback, _accumulator, _list[| i], i);
}

return _accumulator;