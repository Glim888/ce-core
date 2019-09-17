/// @func ai_component_delete(id)
/// @desc The destructor of the AI component class.
/// @param {real} id The id of the AI component instance.
var _id = argument[0];

var _timerAttack = ce_get_prop(_id, "timerAttack");
if (_timerAttack != noone)
{
	ce_delete_timer(_timerAttack);
}

var _timerBlock = ce_get_prop(_id, "timerBlock");
if (_timerBlock != noone)
{
	ce_delete_timer(_timerBlock);
}