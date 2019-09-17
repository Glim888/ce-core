/// @func ce_get_event()
/// @return {string/real} The id of the current event or `undefined`.
/// @note This script should be called only in the user event bound to
/// `CE_EV_BIND_CUSTOM`.
gml_pragma("forceinline");
return global.__ceEvent;