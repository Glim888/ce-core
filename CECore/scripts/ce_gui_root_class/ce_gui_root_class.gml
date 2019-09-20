/// @func ce_gui_root_class()
CE_PRAGMA_ONCE;

var _root = ce_class_create(ce_gui_container_class);
ce_class_define_properties(_root, [
	"widgetHovered", noone,
	"widgetDragging", noone,
	"widgetFocused", noone,
	"eventBound", noone,
	"eventInstance", noone,
	"scale", 1,
	"mouseDragXLast", 0,
	"mouseDragYLast", 0,
	"widgetDraggable", noone,
	"fixPositioning", false,
	"destroyList", noone,
	// Methods,
	"_init", ce_gui_root_init,
	"add_widget", ce_gui_root_add_widget,
	"draw", ce_gui_root_draw,
	"get_display_width", ce_gui_root_get_display_width,
	"get_display_height", ce_gui_root_get_display_height,
]);
ce_class_define_destructor(_root, ce_gui_root_delete);