/// @func ce_delete_timer(timer)
/// @desc Deletes a timer.
/// @param {real} timer The id of the timer to delete.
var _timer = argument0;
var _timers = ce_get_prop(ce_get_prop(_timer, "component"), "timers");
ce_ds_list_remove_first(_timers, _timer);
ce_delete(_timer);