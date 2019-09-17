/// @func ce_timer_on_update(timer)
/// @desc Handles logic of a timer instance.
/// @param {real} timer The id of the timer instance.
/// @note This should be executed every frame for every timer.
var _timer = argument[0];

if (ce_timer_get_time_left(_timer) <= 0)
{
	ce_trigger_event(CE_EV_TIMEOUT, _timer);

	var _callback = ce_timer_get_callback(_timer);
	if (_callback != noone)
	{
		script_execute(_callback);
	}

	ce_delete_timer(_timer);
}