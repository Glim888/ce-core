/// @func ce_gui_root_draw(root)
/// @desc Draws the GUI.
/// @param {real} root The id of the GUI root.
var _root = argument[0];

if (!ce_get_prop(_root, "visible"))
{
	return;
}

var _font = draw_get_font();

global.__ceGuiCurrent = _root;
ce_gui_container_draw(_root);

#region Proxy input
var _focused = ce_get_prop(_root, "widgetFocused");

if (_focused != noone
	/*&& ce_is_instance(_focused, ce_gui_input_class)*/)
{
	var _focusedInput = _focused;
	var _focusedInputX = ce_get_prop(_focusedInput, "_xReal");
	var _focusedInputY = ce_get_prop(_focusedInput, "_yReal");
	var _displayWidth = ce_call(_root, "get_display_width");
	var _displayHeight = ce_call(_root, "get_display_height");
	var _keyboardHeight = keyboard_virtual_height();

	if (rectangle_in_rectangle(_focusedInputX, _focusedInputY,
		_focusedInputX + ce_get_prop(_focusedInput, "width"),
		_focusedInputY + ce_get_prop(_focusedInput, "height"),
		0, 0, _displayWidth, _displayHeight - _keyboardHeight) == 0)
	{
		var _scrDrawProxy = ce_get_prop(_focusedInput, "scrDrawProxy");
		if (_scrDrawProxy != noone)
		{
			script_execute(_scrDrawProxy, _focusedInput);
		}
	}
}
#endregion Proxy input

global.__ceGuiCurrent = noone;

#region destroy widgets
var _destroyList = ce_get_prop(_root, "destroyList");
var _index = 0;

repeat (ds_list_size(_destroyList))
{
	var _widget = _destroyList[| _index++];
	if (!ce_instance_exists(_widget))
	{
		continue;
	}
	#region Remove from parent
	var _parent = ce_get_prop(_widget, "parent");
	if (_parent != noone)
	{
		var _widgets = ce_get_prop(_parent, "widgets");
		var _idx = ds_list_find_index(_widgets, _widget);
		if (_idx != -1)
		{
			ds_list_delete(_widgets, _idx);
		}
	}
	#endregion Remove from parent
	ce_delete(_widget);
}
ds_list_clear(_destroyList);
#endregion

if (draw_get_font() != _font)
{
	draw_set_font(_font);
}