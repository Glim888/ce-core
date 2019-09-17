/// @func ce_add_event_listener(eventListenerComponent, event, listener)
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
/// @param {string/real} event The id of the custom event.
/// @param {real} listener A script executed when the custom event is triggered.
/// It is passed two arguments - the event data and the return value of the
/// previous listener. If an event listener component has multiple listeners
/// bound to an event, then the return value of the last executed listener is
/// used as the return value of the event.
/// @example
/// ```gml
/// /// @desc Create event
/// ce_init_components();
/// eventListenerComponent = ce_add_component(id, ce_event_listener_component);
/// ce_add_event_listener(eventListenerComponent, "myEvent", times_two_listener);
/// ce_add_event_listener(eventListenerComponent, "myEvent", passthrough_listener);
///
/// /// @func times_two_listener(data, retval)
/// return (argument[0] * 2);
///
/// /// @func passthrough_listener(data, retval)
/// return argument[1];
///
/// /// @desc Test
/// ce_trigger_event("myEvent", 2); // Returns 4
/// ```
gml_pragma("forceinline");
ce_ds_bucket_add(ce_get_prop(argument0, "events"), argument1, argument2);