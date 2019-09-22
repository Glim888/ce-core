/// @func ce_window_resize_tracker_component()
/// @desc The definition of the state window resize tracker component class.
CE_PRAGMA_ONCE;

var _windowResizeTrackerComponent = ce_class_create(ce_component_class);
ce_class_define_properties( _windowResizeTrackerComponent, [
	// The previous width of the window.
	"widthPrevious", 0,
	// The previous height of the window.
	"heightPrevious", 0,
	"onUpdate", ce_window_resize_tracker_component_on_update,
]);