/// @func ce_trigger_event_global(event[, data])
/// @desc Triggers the custom event within all instances.
/// @param {string/real} event The id of the event.
/// @param {any} [data] Additional event data.
/// @return {any} The event result.
/// @see ce_event_return
gml_pragma("forceinline");
return ce_trigger_event(argument[0], (argument_count > 1) ? argument[1] : undefined, true);