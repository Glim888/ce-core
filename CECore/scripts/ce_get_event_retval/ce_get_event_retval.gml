/// @func ce_get_event_retval()
/// @return {any} The value returned from a custom event. This is by default
/// `undefined`.
gml_pragma("forceinline");
return global.__ceEventResult;