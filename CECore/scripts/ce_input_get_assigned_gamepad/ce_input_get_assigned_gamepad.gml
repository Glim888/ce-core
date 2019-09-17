/// @func ce_input_get_assigned_gamepad(id[, defaultToMain])
/// @param {real} id The id of the instance.
/// @param {bool} [defaultToMain] True to default to the main gamepad if
/// the instance has no gamepad assigned.
/// @return {real} The id of the gamepad assigned to the instance. If no gamepad
/// is assigned to the instance and `defaultToMain` is set to `true`, then the id
/// of the main gamepad is returned, otherwise `-1`.
/// @see ce_input_assign_gamepad
var _id = argument[0];
if (ds_map_exists(global.__ceInputAssigned, _id))
{
	return global.__ceInputAssigned[? _id];
}
return (argument_count > 1 && argument[1]) ? global.ceInputGamepadMain : -1;