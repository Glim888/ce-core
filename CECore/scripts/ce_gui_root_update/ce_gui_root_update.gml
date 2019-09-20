/// @func ce_gui_root_update(root)
/// @param {real} root The id of the GUI root.
var _gui = argument[0];
global.__ceGuiCurrent = _gui;

var _guiScale = ce_get_prop(_gui, "scale");
var _1ByGuiScale = 1 / _guiScale;

var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();

var _guiWidthScaled = _guiWidth * _1ByGuiScale;
var _guiHeightScaled = _guiHeight * _1ByGuiScale;

ce_gui_set_rectangle(_gui, 0, 0, _guiWidthScaled, _guiHeightScaled);

var _mouseXLinear = window_mouse_get_x() / window_get_width();
var _mouseYLinear = window_mouse_get_y() / window_get_height();

var _mouseX = _mouseXLinear * (_guiWidth / (CE_DESIGN_SCREEN_WIDTH * _guiScale))
	* CE_DESIGN_SCREEN_WIDTH;
var _mouseY = _mouseYLinear * (_guiHeight / (CE_DESIGN_SCREEN_HEIGHT * _guiScale))
	* CE_DESIGN_SCREEN_HEIGHT;

ce_set_prop(_gui, "mouseX", _mouseX);
ce_set_prop(_gui, "mouseY", _mouseY);
ce_set_prop(_gui, "widgetHovered", noone);
ce_set_prop(_gui, "widgetDraggable", noone);

ce_gui_update_position(_gui, _mouseX, _mouseY);
while (ce_get_prop(_gui, "fixPositioning"))
{
	ce_set_prop(_gui, "fixPositioning", false);
	ce_gui_update_position(_gui, _mouseX, _mouseY);
}

global.__ceGuiCurrent = noone;