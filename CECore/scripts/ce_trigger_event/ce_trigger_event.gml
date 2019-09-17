/// @func ce_trigger_event(event[, data[, global]])
/// @desc Triggers the custom event.
/// @param {any} event The id of the event.
/// @param {any} [data] Additional event data.
/// @param {bool} [global] True to trigger the event within all instances,
/// false to only within the calling instance.
/// @return {any} The event result.
/// @see ce_event_return
var _event = argument[0];
var _data = (argument_count > 1) ? argument[1] : undefined;

global.__ceEvent = _event;
global.__ceEventData = _data;
global.__ceEventResult = undefined;

if ((argument_count > 2 && argument[2]))
{
	with (all)
	{
		event_user(CE_EV_BIND_CUSTOM);
	}
}
else
{
	event_user(CE_EV_BIND_CUSTOM);
}

return global.__ceEventResult;