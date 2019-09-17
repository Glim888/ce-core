/// @func ce_timer_get_paused(timer)
/// @desc Checks whether a timer is paused.
/// @param {real} timer The id of the timer.
/// @return {bool} True if the timer is paused.
gml_pragma("forceinline");
return ce_get_prop(argument0, "paused");