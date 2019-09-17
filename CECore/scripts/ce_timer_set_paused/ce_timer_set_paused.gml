/// @func ce_timer_set_paused(timer, paused)
/// @desc Pauses or unpauses a timer instance based on given arguments.
/// @param {real} timer The id of the timer instance.
/// @param {bool} paused True to pause the timer, false to unpause.
var _timer = argument0;
var _paused = argument1;

if (ce_timer_get_paused(_timer) == _paused)
{
	return;
}

if (_paused)
{
	ce_set_prop(_timer, "duration",  ce_timer_get_time_left(_timer));
}
else
{
	ce_set_prop(_timer, "start", current_time);
}

ce_set_prop(_timer, "paused", _paused);