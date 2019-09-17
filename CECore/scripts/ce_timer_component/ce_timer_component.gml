/// @func ce_timer_component()
/// @desc The definition of the timer component class.
CE_PRAGMA_ONCE;

var _timerComponent = ce_class_create(ce_component_class);
ce_class_define_properties(_timerComponent, [
	// List of timers.
	"timers", noone,
	// Initialization script for timer component instances.
	"onInit", ce_timer_component_on_init,
	// Update script for timer component instances.
	"onUpdate", ce_timer_component_on_update,
]);
ce_class_define_destructor(_timerComponent, ce_timer_component_delete);