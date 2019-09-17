/// @func ai_component_on_update(id)
/// @param {real} id The id of the AI component instance.
EXIT_IF_PAUSED;
var _id = argument[0];
var _state = ce_get_state(stateMachineComponent);

switch (_state)
{
case stateIdle:
case stateWalking:
	var _target = find_target(_id);
	ce_set_prop(_id, "target", _target);

	if (_target != noone
		&& instance_exists(_target))
	{
		if (point_distance(x, y, _target.x, _target.y) > attackRange)
		{
			// Follow the _target if it's outside of the attack range
			var _speed = ce_per_second(movementSpeed);
			mp_potential_step_object(_target.x, _target.y, _speed, OGameObject);

			if (_state != stateWalking)
			{
				ce_change_state(stateMachineComponent, stateWalking);
			}
		}
		else
		{
			var _timerAttack = ce_get_prop(_id, "timerAttack");
			var _timerBlock = ce_get_prop(_id, "timerBlock");

			if (_timerAttack == noone
				&& _timerBlock == noone)
			{
				// Choose whether to attack or block
				if (random(1) < 0.25)
				{
					ce_set_prop(_id, "timerBlock", ce_add_timer(timerComponent, random_range(500, 1000)));
					ce_change_state(stateMachineComponent, stateBlocking);
				}
				else
				{
					ce_set_prop(_id, "timerAttack", ce_add_timer(timerComponent, random_range(100, 500)));

					if (_state != stateIdle)
					{
						ce_change_state(stateMachineComponent, stateIdle);
					}
				}
			}
		}
	}
	break;
}