/// @func ce_event_return(value)
/// @desc Returns a value from the triggered custom event.
/// @param {any} value The value to return.
gml_pragma("forceinline");
global.__ceEventResult = argument0;