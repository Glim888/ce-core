/// @func ce_get_event_data()
/// @return {any} Additional data of the current event.
/// @note This script should be called only in the user event bound to
/// `CE_EV_BIND_CUSTOM`.
gml_pragma("forceinline");
return global.__ceEventData;