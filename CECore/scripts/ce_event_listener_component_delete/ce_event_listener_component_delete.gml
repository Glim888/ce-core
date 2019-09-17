/// @func ce_event_listener_component_delete(eventListenerComponent)
/// @desc The destructor of the event listener component class.
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
ds_map_destroy(ce_get_prop(argument0, "events"));