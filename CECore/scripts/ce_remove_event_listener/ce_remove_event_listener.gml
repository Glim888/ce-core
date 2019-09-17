/// @func ce_remove_event_listener(eventListenerComponent, event[, listener...])
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
/// @param {string/real} event The id of the custom event.
/// @param {real} listener
var _eventListenerComponent = argument[0];
var _event = argument[1];

var _eventMap = ce_get_prop(_eventListenerComponent, "events");

if (argument_count == 2)
{
	ds_map_delete(_eventMap, _event);
	return;
}

var _list = _eventMap[? _event];
var i = 2;

repeat (argument_count - i)
{
	ce_ds_list_remove_first(_list, argument[i++]);
}