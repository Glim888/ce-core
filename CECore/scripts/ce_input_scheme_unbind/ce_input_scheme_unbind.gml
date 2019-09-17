/// @func ce_input_scheme_unbind(scheme, action, type, key[, direction])
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action. Use `undefined` to unbind
/// from all actions.
/// @param {CE_EInputType} type The input type.
/// @param {real} key The input key. Use `mb_none` for mouse wheel.
/// @param {CE_EInputDirection} [direction] The input direction. Applicable only
/// for gamepad axis and mouse wheel.
var _scheme = argument[0];
var _action = argument[1];
var _type = argument[2];
var _key = argument[3];
var _direction = (argument_count > 4) ? argument[4] : 1;

if (is_undefined(_action))
{
	var _size = ds_map_size(_scheme);
	var _action = ds_map_find_first(_scheme);
	repeat (_size)
	{
		if (!(is_string(_action) && string_char_at(_action, 1) == "_"))
		{
			ce_ds_list_remove(
				_ce_input_action_get_list(_scheme[? _action], _type),
				ce_input_encode(0, _type, _key, _direction));
		}
		_action = ds_map_find_next(_scheme, _action);
	}
}
else
{
	ce_ds_list_remove(
		_ce_input_action_get_list(_scheme[? _action], _type),
		ce_input_encode(0, _type, _key, _direction));
}