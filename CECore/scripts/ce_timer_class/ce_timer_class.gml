/// @func ce_timer_class()
/// @func The definition of the timer class.
CE_PRAGMA_ONCE;

var _timer = ce_class_create();
ce_class_define_properties(_timer, [
	// The id of the timer component which contains the timer.
	"component", noone,
	// The start of the timer.
	"start", noone,
	// The duration of the timer in milliseconds.
	"duration", 0,
	// The callback script of the timer, which is executed when the timer ends.
	"callback", noone,
	// Whether the timer is paused.
	"paused", false,
	// Update script for timer instances.
	"onUpdate", ce_timer_on_update,
]);