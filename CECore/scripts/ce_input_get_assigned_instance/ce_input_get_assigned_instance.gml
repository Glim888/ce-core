/// @func ce_input_get_assigned_instance(gamepad)
/// @param {real} gamepad The id of the gamepad.
/// @return {real} The id of the instance assigned to the gamepad or `noone`.
/// @see ce_input_assign_gamepad
var _inst = ce_ds_map_find_key(global.__ceInputAssigned, argument0);
if (_inst != undefined)
{
	return _inst;
}
return noone;