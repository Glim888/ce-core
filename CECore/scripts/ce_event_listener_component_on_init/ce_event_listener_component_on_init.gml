/// @func ce_event_listener_component_on_init(eventListenerComponent)
/// @desc Initializes an event listener component instance.
/// @param {real} eventListenerComponent The id of the event listener component
/// instance.
var _eventListenerComponent = argument[0];
ce_super(_eventListenerComponent, "onInit");
ce_set_prop(_eventListenerComponent, "events", ce_ds_bucket_create());