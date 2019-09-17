/// @func ce_event_listener_component()
/// @desc The definition of the event listener component class.
CE_PRAGMA_ONCE;

var _eventListenerClass = ce_class_create(ce_component_class);
ce_class_define_properties(_eventListenerClass, [
	// Mapping of event ids to list of scripts executed when the event is triggered.
	"events", noone,
	"onInit", ce_event_listener_component_on_init,
	"onCustomEvent", ce_event_listener_component_on_custom_event,
]);
ce_class_define_destructor(_eventListenerClass, ce_event_listener_component_delete);