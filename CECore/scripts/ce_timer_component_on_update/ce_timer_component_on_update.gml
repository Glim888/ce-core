/// @func ce_timer_component_on_update(timerComponent)
/// @desc Handles logic of a timer component instance.
/// @param {real} timerComponent The id of the timer component instance.
/// @note This should be executed every frame for every instance of the timer
/// component class.
var _timerComponent = argument[0];
var _timers = ce_get_prop(_timerComponent, "timers");
var _size = ds_list_size(_timers);
var i = _size - 1;

repeat (_size)
{
	ce_call(_timers[| i--], "onUpdate");
}