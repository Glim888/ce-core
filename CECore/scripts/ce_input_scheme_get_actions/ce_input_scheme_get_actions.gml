/// @func ce_input_scheme_get_actions(scheme)
/// @param {real} scheme The id of the scheme.
/// @return {array} An array of ids of actions within the scheme.
var _scheme = argument0;
var _size = ds_map_size(_scheme);
var _arr = array_create(_size - 2, 0); // Minus number of non-action keys.
var _action = ds_map_find_first(_scheme);
var _idx = 0;
repeat (_size)
{
	if (!(is_string(_action) && string_char_at(_action, 1) == "_"))
	{
		_arr[_idx++] = _action;
	}
	_action = ds_map_find_next(_scheme, _action);
}
return _arr;