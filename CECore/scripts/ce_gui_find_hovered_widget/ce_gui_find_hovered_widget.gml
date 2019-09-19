/// @func ce_gui_find_hovered_widget(widget, mouseX, mouseY[, redraw])
/// @desc Recursively finds a widget underneath the mouse cursor.
/// @param {real} widget The widget to start searching from.
/// @param {real} mouseX The x position of the mouse cursor (relative to the
/// widget's position).
/// @param {real} mouseY The y position of the mouse cursor (relative to the
/// widget's position).
/// @param {bool} [redraw] True to set the `redraw` property of widgets to `true`.
/// Defaults to `false`.
/// @return {real} The id of the hovered widget or `noone`.
var _widget = argument[0];

if (!ce_get_prop(_widget, "visible"))
{
	return noone;
}

var _mouseX = argument[1];
var _mouseY = argument[2];
var _redraw = (argument_count > 3) ? argument[3] : false;
var _x = ce_get_prop(_widget, "_xReal");
var _y = ce_get_prop(_widget, "_yReal");
var _width = ce_get_prop(_widget, "width");
var _height = ce_get_prop(_widget, "height");

ce_set_prop(_widget, "mouseX", _mouseX - _x);
ce_set_prop(_widget, "mouseY", _mouseY - _y);

if (!ce_point_in_rect(_mouseX, _mouseY, _x, _y, _width, _height))
{
	return noone;
}

if (_redraw)
{
	ce_set_prop(_widget, "redraw", true);
}

if (ce_is_instance(_widget, ce_gui_container_class))
{
	return _widget;
} 

var _widgets = ce_get_prop(_widget, "widgets");
var _index = 0;

repeat (ds_list_size(_widgets))
{
	var _hovered = ce_gui_find_hovered_widget(_widgets[| _index++], _mouseX - _x, _mouseY - _y);
	if (_hovered != noone)
	{
		return _hovered;
	}
}

return _widget;