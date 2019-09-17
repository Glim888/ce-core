if (ce_input_get_binding_action() == noone)
{
	pause = !pause;
	ce_trigger_event_global(pause ? "gamePaused" : "gameUnpaused");
}