/// @func character_attack()
var _team = team;
var _attackRange = attackRange;
var _attackPower = attackPower;
var _x = x;
var _y = y;

with (OCharacter)
{
	if (team != _team
		&& point_distance(_x, _y, x, y) <= _attackRange)
	{
		var _state = ce_get_state(stateMachineComponent);
		if (_state != stateBlocking)
		{
			hp -= _attackPower;
			if (_state != stateKnockback)
			{
				ce_change_state(stateMachineComponent, stateKnockback);
				zSpeed = 100;
				direction = point_direction(_x, _y, x, y);
			}
			ce_trigger_event("gotHit", _attackPower);
		}
	}
}