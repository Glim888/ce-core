/// @func ce_timer_get_time_left(timer)
/// @desc Retrieves a time left till a timer ends.
/// @param {real} timer The id of the timer instance.
/// @return {real} Time left till the timer ends in milliseconds.
var _timer = argument0;

if (ce_timer_get_paused(_timer))
{
	return ce_get_prop(_timer, "duration");
}

return (ce_get_prop(_timer, "start") + ce_get_prop(_timer, "duration") - current_time);