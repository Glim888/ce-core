/// @func ce_input_scheme_bind(scheme, action, type, key[, direction])
/// @desc Binds the input to the action within the given input scheme.
/// @param {real} scheme The id of the scheme.
/// @param {string/real} action The id of the action.
/// @param {CE_EInputType} type The input type.
/// @param {real} key The input key. Use `mb_none` for mouse wheel.
/// @param {CE_EInputDirection} [direction] The input direction. Applicable only
/// for gamepad axis and mouse wheel.
var _scheme = argument[0];
var _action = argument[1];
var _type = argument[2];
var _key = argument[3];
var _direction = (argument_count > 4) ? argument[4] : 1;

ce_input_scheme_unbind(_scheme, undefined, _type, _key, _direction);

var _list = _ce_input_action_get_list(_scheme[? _action], _type);

ce_ds_list_insert_unique(_list, ce_input_encode(0, _type, _key, _direction), 0);

if (CE_INPUT_MAX_BINDINGS > 0)
{
	var _size = ds_list_size(_list);
	while (_size > CE_INPUT_MAX_BINDINGS)
	{
		ds_list_delete(_list, --_size);
	}
}