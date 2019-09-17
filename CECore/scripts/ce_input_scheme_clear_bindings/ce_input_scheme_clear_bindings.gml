/// @func ce_input_scheme_clear_bindings(scheme, action[, mode])
/// @desc Clears key bindings of the action.
/// @param {real} scheme The id of the scheme.
/// @param {real} [mode] Use 0 to clear all, 1 to clear mouse + keyboard
/// or 2 to clear gamepad bindings. Defaults to 0.
/// @param {string/real} action The id of the action.
var _scheme = argument[0];
var _action = _scheme[? argument[1]];
var _mode = (argument_count > 2) ? argument[2] : 0;

if (_mode <= 1)
{
	ds_map_delete(_action, "pc");
}

if (_mode != 1)
{
	ds_map_delete(_action, "gamepad");
}