/// @func ce_gui_widget_class()
CE_PRAGMA_ONCE;

var _widgetClass = ce_class_create(ce_event_listener_class);
ce_class_define_properties(_widgetClass, [
	"gui", 0,
	"parent", 0,
	"x", 0,
	"y", 0,
	"width", 0,
	"height", 0,
	"position", 0,
	"visible", 0,
	// Pivot
	"pivotX", 0,
	"pivotY", 0,
	// Margin
	"marginLeft", 0,
	"marginTop", 0,
	"marginRight", 0,
	"marginBottom", 0,
	// Align within the parent widget
	"alignH", 0,
	"alignV", 0,
	// True calculated dimensions
	"_xReal", 0,
	"_yReal", 0,
	"_widthReal", 0,
	"_heightReal", 0,
	// Mouse coordinates relative to the widget position. Applicable only when
	// the widget is hovered/clicked/...
	"mouseX", 0,
	"mouseY", 0,
	// Background
	"backgroundColor", c_black,
	"backgroundAlpha", 0,
	"backgroundSprite", undefined,
	"backgroundIndex", 0,
	"backgroundStyle", CE_EGuiBackgroundStyle.Stretch,
	"backgroundSpriteBlend", c_white,
	"backgroundSpriteAlpha", 1,
	"backgroundTile", false, // Applies only to nine slice backgrounds.
	"backgroundAlignHor", 0,
	"backgroundAlignVer", 0,
	"backgroundWidth", undefined,
	"backgroundHeight", undefined,
	"backgroundScaleX", 1,
	"backgroundScaleY", 1,
	"backgroundX", 0,
	"backgroundY", 0,
	"backgroundRot", 0,
	// Methods
	"_init", undefined,
	"draw", ce_gui_widget_draw,
	"draw_background", ce_gui_widget_draw_background,
]);