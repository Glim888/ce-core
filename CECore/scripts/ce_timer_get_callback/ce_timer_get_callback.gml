/// @func ce_timer_get_callback(timer)
/// @desc Retrieves the index of the callback script of a timer.
/// @param {real} timer The id of the timer instance.
/// @return {real} The index of the callback script or `noone` if the timer
/// does not have any.
gml_pragma("forceinline");
return ce_get_prop(argument0, "callback");