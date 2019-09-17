/// @func ce_get_event_listeners(eventListenerComponent, event)
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
/// @param {string/real} event The id of the custom event.
/// @return {real} or `noone`
var _eventListenerComponent = argument[0];
var _event = argument[1];

var _eventMap = ce_get_prop(_eventListenerComponent, "events");

return (ds_map_exists(_eventMap, _event))
	? _eventMap[? _event]
	: noone;