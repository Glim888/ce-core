/// @func ce_add_timer(timerComponent, duration[, callback[, paused]])
/// @desc Adds a timer to a timer component.
/// @param {real} timerComponent The id of the timer component instance to which
/// the timer should be added.
/// @param {real} duration The duration of the timer in milliseconds.
/// @param {real} [callback] The index of the callback script, which is executed
/// at the end of the timer. Use `noone` (default) for no callback.
/// @param {bool} [paused] True to create the timer as paused.
/// @return {real} The id of the timer.
/// @note An event [CE_EV_TIMEOUT](./CE_EV_TIMEOUT.html) is always executed at
/// the end of a timer with the timer's id as the event data.
/// @see CE_EV_TIMEOUT
var _timerComponent = argument[0];

var _timer = ce_timer_create(
	argument[1],
	(argument_count > 2) ? argument[2] : noone,
	(argument_count > 3) ? argument[3] : false);

ce_set_prop(_timer, "component", _timerComponent);

var _timers = ce_get_prop(_timerComponent, "timers");
ce_ds_list_add_map(_timers, _timer);

return _timer;