/// @func ai_component_on_custom_event(id)
/// @param {real} id The id of the AI component instance.
var _id = argument[0];
var _state = ce_get_event();

switch (_state)
{
case "gamePaused":
case "gameUnpaused":
	var _timerAttack = ce_get_prop(_id, "timerAttack");
	var _timerBlock = ce_get_prop(_id, "timerBlock");
	var _pause = (_state == "gamePaused");

	if (_timerAttack != noone)
	{
		ce_timer_set_paused(_timerAttack, _pause);
	}

	if (_timerBlock != noone)
	{
		ce_timer_set_paused(_timerBlock, _pause);
	}
	break;

case "gotHit":
	var _timerAttack = ce_get_prop(_id, "timerAttack");
	var _timerBlock = ce_get_prop(_id, "timerBlock");

	if (_timerAttack != noone)
	{
		ce_delete_timer(_timerAttack);
		ce_set_prop(_id, "timerAttack", noone);
	}

	if (_timerBlock != noone)
	{
		ce_delete_timer(_timerBlock);
		ce_set_prop(_id, "timerBlock", noone);
	}
	break;

case CE_EV_TIMEOUT:
	var _timerAttack = ce_get_prop(_id, "timerAttack");
	var _timerBlock = ce_get_prop(_id, "timerBlock");
	var _timer = ce_get_event_data();

	if (_timer == _timerAttack)
	{
		ce_change_state(stateMachineComponent, stateAttacking);
		ce_set_prop(_id, "timerAttack", noone);
	}
	else if (_timer == _timerBlock)
	{
		ce_change_state(stateMachineComponent, stateIdle);
		ce_set_prop(_id, "timerBlock", noone);
	}
	break;
}