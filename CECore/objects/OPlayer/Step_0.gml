event_inherited();

EXIT_IF_PAUSED;

if (ce_has_component(id, ai_component))
{
	// Do not execute the player logic when the character is controlled by an AI.
	exit;
}

var _state = ce_get_state(stateMachineComponent);

switch (_state)
{
case stateIdle:
case stateWalking:
	var _movementSpeedPerSec = ce_per_second(movementSpeed);
	var _moveOnX = (ce_input_check_down(EAction.MoveRight)
		- ce_input_check_down(EAction.MoveLeft))
		* _movementSpeedPerSec;
	var _moveOnY = (ce_input_check_down(EAction.MoveDown)
		- ce_input_check_down(EAction.MoveUp))
		* _movementSpeedPerSec;

	x += _moveOnX
	y += _moveOnY;

	if (_moveOnX != 0 || _moveOnY != 0)
	{
		direction = point_direction(0, 0, _moveOnX, _moveOnY);

		if (_state != stateWalking)
		{
			ce_change_state(stateMachineComponent, stateWalking);
		}
	}
	else if (_state != stateIdle)
	{
		ce_change_state(stateMachineComponent, stateIdle);
	}

	if (ce_input_check_pressed(EAction.Attack))
	{
		ce_change_state(stateMachineComponent, stateAttacking);
	}
	else if (ce_input_check_down(EAction.Block))
	{
		ce_change_state(stateMachineComponent, stateBlocking);
	}
	else if (ce_input_check_pressed(EAction.Heal)
		&& potions > 0)
	{
		ce_change_state(stateMachineComponent, stateHealing);
		healing += 100;
		--potions;
	}
	break;

case stateBlocking:
	if (!ce_input_check_down(EAction.Block))
	{
		ce_change_state(stateMachineComponent, stateIdle);
	}
	break;
}