/// @func ce_timer_component_on_init(timerComponent)
/// @desc Initializes a timer component instance.
/// @param {real} timerComponent The id of the timer component instance.
var _timerComponent = argument[0];
ce_super(_timerComponent, "onInit");
ce_set_prop(_timerComponent, "timers", ds_list_create());