/// @func ce_has_event_listener(eventListenerComponent, event[, listener...])
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
/// @param {string/real} event The id of the custom event.
/// @param {real} listener
/// @return {bool}
var _eventListenerComponent = argument[0];
var _event = argument[1];

var _eventMap = ce_get_prop(_eventListenerComponent, "events");

if (!ds_map_exists(_eventMap, _event))
{
	return false;
}

var _list = _eventMap[? _event];
var i = 2;

repeat (argument_count - i)
{
	var _index = ds_list_find_index(_list, argument[i++]);
	if (_index == -1)
	{
		return false;
	}
}

return true;