event_inherited();

EXIT_IF_PAUSED;

if (healing > 0)
{
	var _ammount = min(healing, ce_per_second(10));
	hp = min(hp + _ammount, hpMax);
	healing -= _ammount;
}

// Knockback effect
if (ce_get_state(stateMachineComponent) == stateKnockback)
{
	var _other = instance_place(x, y, OGameObject);
	if (_other != noone && _other.object_index != OPlayer)
	{
		x = xprevious;
		y = yprevious;
		direction = point_direction(_other.x, _other.y, x, y);
	}
	else
	{
		var _len = ce_per_second(300);
		x += lengthdir_x(_len, direction);
		y += lengthdir_y(_len, direction);
	}
}