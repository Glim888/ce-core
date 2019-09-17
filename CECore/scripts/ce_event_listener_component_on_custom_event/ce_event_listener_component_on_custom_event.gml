/// @func ce_event_listener_component_on_custom_event(eventListenerComponent)
/// @desc Handles calling event listeners when a custom event is triggered.
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
var _eventListenerComponent = argument[0];
var _event = ce_get_event();
var _eventMap = ce_get_prop(_eventListenerComponent, "events");

if (ds_map_exists(_eventMap, _event))
{
	var _listeners = _eventMap[? _event];
	var _eventData = ce_get_event_data();
	var _retval = ce_get_event_retval();
	var i = 0;

	repeat (ds_list_size(_listeners))
	{
		_retval = script_execute(_listeners[| i++], _eventData, _retval);
	}

	ce_event_return(_retval);
}