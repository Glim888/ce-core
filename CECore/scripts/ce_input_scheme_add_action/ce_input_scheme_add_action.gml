/// @func ce_input_scheme_add_action(scheme, action)
/// @desc Adds the action into the input scheme.
/// @param {real} scheme The id of the input scheme.
/// @param {string/real} action The id of the action.
var _scheme = argument0;
var _action = argument1;
if (!ds_map_exists(_scheme, _action))
{
	var _struct = ds_map_create();
	ds_map_add_map(_scheme, _action, _struct);
	ce_input_scheme_clear_bindings(_scheme, _action);
}