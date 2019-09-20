/// @func ce_gui_set_rectangle(widget, x, y, width, height)
/// @desc Sets the position and the size of the widget to given values.
/// @param {real} widget The id of the widget.
/// @param {real} x The new x position of the widget.
/// @param {real} y The new y position of the widget.
/// @param {real} width The new width of the widget.
/// @param {real} height The new height of the widget.
var _widget = argument0;
ce_set_prop(_widget, "x", argument1);
ce_set_prop(_widget, "y", argument2);
ce_set_prop(_widget, "width", argument3);
ce_set_prop(_widget, "height",argument4);