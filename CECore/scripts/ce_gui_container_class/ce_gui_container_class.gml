/// @func ce_gui_container_class()
CE_PRAGMA_ONCE;

var _containerClass = ce_class_create(ce_gui_widget_class);
ce_class_define_properties(_containerClass, [
	"widgets", noone,
	"sprite", noone,
	"subimage", 0,
	"overflow", true,
	"surface", noone,
	"redraw", true,
	"contentStyle", CE_EGuiContentStyle.Default,
	"gridColumns", 1,
	"gridRows", 1,
	"contentW", 0,
	"contentH", 0,
	"scrollX", 0,
	"scrollY", 0,
	"scrollXEnable", false,
	"scrollYEnable", false,
	"grow", false,
	// Padding
	"paddingLeft", 0,
	"paddingTop", 0,
	"paddingRight", 0,
	"paddingBottom", 0,
]);
ce_class_define_destructor(_containerClass, ce_gui_container_delete);