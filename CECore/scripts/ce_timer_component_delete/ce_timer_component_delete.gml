/// @func ce_timer_component_delete(timerComponent)
/// @desc The destructor of the timer component class.
/// @param {real} timerComponent The id of the timer component instance.
ds_list_destroy(ce_get_prop(argument0, "timers"));