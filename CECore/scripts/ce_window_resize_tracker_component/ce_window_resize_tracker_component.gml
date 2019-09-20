/// @func ce_window_resize_tracker_component()
CE_PRAGMA_ONCE;

var _windowResizeTrackerComponent = ce_class_create(ce_component_class);
ce_class_define_properties( _windowResizeTrackerComponent, [
	"widthPrevious", 0,
	"heightPrevious", 0,
	"windowInit", true,
	"onUpdate", ce_window_resize_tracker_component_on_update,
]);