switch (ce_get_event())
{
case "gamePaused":
	ce_timer_set_paused(timerSpawnEnemy, true);
	break;

case "gameUnpaused":
	ce_timer_set_paused(timerSpawnEnemy, false);
	break;

case CE_EV_TIMEOUT:
	if (ce_get_event_data() == timerSpawnEnemy)
	{
		// Spawn wave of enemies
		repeat (wave)
		{
			instance_create_layer(
				random(room_width),
				random(room_height),
				layer,
				OEnemy);
		}
		timerSpawnEnemy = ce_add_timer(timerComponent, ce_seconds_to_ms(30));
		++wave;
	}
	break;

case CE_EV_GAMEPAD_CONNECTED:
	var _gamepad = ce_get_event_data();
	var _player = ce_input_get_assigned_instance(_gamepad);
	if (_player == noone)
	{
		// Spawn a new player
		with (instance_create_layer(
			random(room_width),
			random(room_height),
			layer,
			OPlayer))
		{
			ce_input_assign_gamepad(id, _gamepad);
			if (other.pause)
			{
				ce_trigger_event("gamePaused");
			}
		}
	}
	else
	{
		// A player instance for given gamepad already exists, so we just remove
		// the AI component from it.
		ce_remove_component(_player, aiComponent);
		aiComponent = noone;
	}
	break;

case CE_EV_GAMEPAD_DISCONNECTED:
	var _gamepad = ce_get_event_data();
	var _player = ce_input_get_assigned_instance(_gamepad);
	if (_player != noone)
	{
		// If a player disconnects his gamepad, add an AI component to his
		// character.
		aiComponent = ce_add_component(_player, ai_component);
	}
	break;
}