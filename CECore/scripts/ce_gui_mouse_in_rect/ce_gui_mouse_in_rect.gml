/// @func ce_gui_mouse_in_rect(x, y, width, height)
/// @param {real} x The x position of the rectangle's top left corner.
/// @param {real} y The y position of the rectangle's top left corner.
/// @param {real} width The width of the rectangle.
/// @param {real} height The height of the rectangle.
/// @return {bool} True if the mouse is in the rectangle.
gml_pragma("forceinline");
return ce_point_in_rect(
	ce_gui_mouse_x(),
	ce_gui_mouse_y(),
	argument0,
	argument1,
	argument2,
	argument3);