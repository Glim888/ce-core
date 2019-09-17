ce_call_components("onCustomEvent");

switch (ce_get_event())
{
case "gamePaused":
	image_speed = 0;
	break;

case "gameUnpaused":
	image_speed = 1;
	break;

case "landed":
	if (ce_get_state(stateMachineComponent) == stateKnockback)
	{
		ce_change_state(stateMachineComponent, stateIdle);
	}
	break;

case CE_EV_STATE_CHANGED:
	var _sprite = sprites[? ce_get_state(stateMachineComponent)];
	if (_sprite != undefined)
	{
		sprite_index = _sprite;
		image_index = 0;
	}
	break;
}