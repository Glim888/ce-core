/// @func ce_timer_create(duration[, callback[, paused]])
/// @desc Creates a new instance of the timer class.
/// @param {real} duration The duration of the timer in milliseconds.
/// @param {real} [callback] The index of the callback script, which is executed
/// at the end of the timer. Use `noone` (default) for no callback.
/// @param {bool} [paused] True to create the timer as paused.
/// @return {real} The id of the created instance.
var _timer = ce_make_instance(ce_timer_class);
ce_set_prop(_timer, "start", current_time);
ce_set_prop(_timer, "duration", argument[0]);
ce_set_prop(_timer, "callback", (argument_count > 1) ? argument[1] : noone);
ce_timer_set_paused(_timer, (argument_count > 2) ? argument[2] : false);
return _timer;