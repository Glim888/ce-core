randomize();

ce_init_components();
timerComponent = ce_add_component(id, ce_timer_component);

/// @enum Enumeration of player actions.
enum EAction
{
	MoveUp,
	MoveDown,
	MoveLeft,
	MoveRight,
	Attack,
	Block,
	Heal,
	/// @member Total number of actions.
	SIZE
};

ce_input_action_create(EAction.MoveUp, "Move up");
ce_input_action_create(EAction.MoveDown, "Move down");
ce_input_action_create(EAction.MoveLeft, "Move left");
ce_input_action_create(EAction.MoveRight, "Move right");
ce_input_action_create(EAction.Attack, "Attack");
ce_input_action_create(EAction.Block, "Block");
ce_input_action_create(EAction.Heal, "Heal");

schemeDefault = ce_input_scheme_create("Default");

ce_input_scheme_add_action(schemeDefault, EAction.MoveUp);
ce_input_scheme_bind_keyboard(schemeDefault, EAction.MoveUp, ord("W"));
ce_input_scheme_bind_axis(schemeDefault, EAction.MoveUp, gp_axislv, CE_EInputDirection.Up);

ce_input_scheme_add_action(schemeDefault, EAction.MoveDown);
ce_input_scheme_bind_keyboard(schemeDefault, EAction.MoveDown, ord("S"));
ce_input_scheme_bind_axis(schemeDefault, EAction.MoveDown, gp_axislv, CE_EInputDirection.Down);

ce_input_scheme_add_action(schemeDefault, EAction.MoveLeft);
ce_input_scheme_bind_keyboard(schemeDefault, EAction.MoveLeft, ord("A"));
ce_input_scheme_bind_axis(schemeDefault, EAction.MoveLeft, gp_axislh, CE_EInputDirection.Left);

ce_input_scheme_add_action(schemeDefault, EAction.MoveRight);
ce_input_scheme_bind_keyboard(schemeDefault, EAction.MoveRight, ord("D"));
ce_input_scheme_bind_axis(schemeDefault, EAction.MoveRight, gp_axislh, CE_EInputDirection.Right);

ce_input_scheme_add_action(schemeDefault, EAction.Attack);
ce_input_scheme_bind_mouse(schemeDefault, EAction.Attack, mb_left);
ce_input_scheme_bind_gamepad(schemeDefault, EAction.Attack, gp_face3);

ce_input_scheme_add_action(schemeDefault, EAction.Block);
ce_input_scheme_bind_mouse(schemeDefault, EAction.Block, mb_right);
ce_input_scheme_bind_gamepad(schemeDefault, EAction.Block, gp_face2);

ce_input_scheme_add_action(schemeDefault, EAction.Heal);
ce_input_scheme_bind_keyboard(schemeDefault, EAction.Heal, ord("E"));
ce_input_scheme_bind_gamepad(schemeDefault, EAction.Heal, gp_face4);

ce_input_set_scheme(schemeDefault);

/// @var {real} The next wave of enemies.
wave = 1;

/// @var {real} The id of the timer used to spawn new waves of enemies.
timerSpawnEnemy = ce_add_timer(timerComponent, ce_seconds_to_ms(5));

/// @var {bool} True if the game is paused.
pause = false;

// Spawn the main player
instance_create_layer(
	room_width * 0.5,
	room_height * 0.5,
	layer,
	OPlayer);