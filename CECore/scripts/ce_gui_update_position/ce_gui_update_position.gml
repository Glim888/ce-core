/// @func ce_gui_update_position(widget, mouseX, mouseY)
/// @param {real} widget The id of the widget.
/// @param {real} mouseX The mouse x position relative to the widget.
/// @param {real} mouseY The mouse y position relative to the widget.
// TODO: Rewrite as class methods!
var _widget = argument0;

if (!ce_get_prop(_widget, "visible"))
{
	return;
}

var _gui = ce_get_prop(_widget, "gui");
var _x = ce_get_prop(_widget, "_xReal");
var _y = ce_get_prop(_widget, "_yReal");
var _width = ce_get_prop(_widget, "width");
var _height = ce_get_prop(_widget, "height");

//if (ce_is_instance(_widget, ce_gui_text_class))
//{
//	var _text = ce_get_prop(_widget, "text");
//	if (ce_get_prop(_widget, "format"))
//	{
//		_text = ce_string_format(_text);
//	}
//	ce_gui_set_current_font(ce_get_prop(_widget, "gui"), ce_get_prop(_widget, "font"));
//	var _widthNew = string_width(_text);
//	var _heightNew = string_height(_text);
//	if (_width != _widthNew
//		|| _height != _heightNew)
//	{
//		_width = _widthNew;
//		_height = _heightNew;
//		ce_set_prop(_widget, "width", _width);
//		ce_set_prop(_widget, "height", _height);
//		ce_set_prop(_gui, "fixPositioning", true);
//	}
//	ce_set_prop(_widget, "_textReal", _text);
//}

var _mouseX = argument1;
var _mouseY = argument2;

ce_set_prop(_widget, "mouseX", _mouseX);
ce_set_prop(_widget, "mouseY", _mouseY);

if (ce_gui_mouse_in_rect(_x, _y, _width, _height))
{
	if (_gui != noone)
	{
		ce_set_prop(_gui, "widgetHovered", _widget);
		if (ce_has_prop(_widget, "events"))
		{
			var _eventMap = ce_get_prop(_widget, "events");
			if (ds_map_exists(_eventMap, CE_EGuiEvent.Drag))
			{
				ce_set_prop(_gui, "widgetDraggable", _widget);
			}
		}
	}
	ce_set_prop(_widget, "redraw", true);
}

if (!ce_has_prop(_widget, "widgets"))
{
	return;
}

var _scrollX = ce_has_prop(_widget, "scrollX")
	? ce_get_prop(_widget, "scrollX") : 0;
var _scrollY = ce_has_prop(_widget, "scrollY")
	? ce_get_prop(_widget, "scrollY") : 0;
var _xScroll = _x - _scrollX;
var _yScroll = _y - _scrollY;

var _contentStyle = ce_has_prop(_widget, "contentStyle")
	? ce_get_prop(_widget, "contentStyle")
	: CE_EGuiContentStyle.Default;

var _contentW = 0;
var _contentH = 0;

var _paddingLeft = ce_get_prop(_widget, "paddingLeft");
var _paddingTop = ce_get_prop(_widget, "paddingTop");
var _paddingRight = ce_get_prop(_widget, "paddingRight");
var _paddingBottom = ce_get_prop(_widget, "paddingBottom");

var _drawX = _paddingLeft;
var _drawY = _paddingTop;
var _stepX = 0;
var _stepY = 0;

if (_contentStyle == CE_EGuiContentStyle.Grid)
{
	_stepX += (_width - _paddingRight - _paddingLeft)
		/ ce_get_prop(_widget, "gridColumns");
	_stepY += (_height - _paddingBottom - _paddingTop)
		/ ce_get_prop(_widget, "gridRows");
}

var _widgets = ce_get_prop(_widget, "widgets");
var _index = 0;

repeat (ds_list_size(_widgets))
{
	var _w = _widgets[| _index++];

	if (!ce_get_prop(_widget, "visible"))
	{
		continue;
	}

	var _wXReal = 0;
	var _wYReal = 0;
	var _position = ce_has_prop(_w, "position")
		? ce_get_prop(_w, "position") : CE_EGuiPosition.Scroll;

	#region Position style
	switch (_position)
	{
	case CE_EGuiPosition.Scroll:
		var _wWidth = ce_get_prop(_w, "width");
		var _wHeight = ce_get_prop(_w, "height");
		var _xReal, _yReal;

		if (_contentStyle == CE_EGuiContentStyle.Grid)
		{
			_xReal = _drawX + ce_get_prop(_w, "x")
				+ (_stepX - _wWidth) * ce_get_prop(_w, "alignH");
			_yReal = _drawY + ce_get_prop(_w, "y")
				+ (_stepY - _wHeight) * ce_get_prop(_w, "alignV");
		}
		else
		{
			_drawX += ce_get_prop(_w, "marginLeft");
			_drawY += ce_get_prop(_w, "marginTop");
			_xReal = _drawX + ce_get_prop(_w, "x")
				+ (_width - _wWidth) * ce_get_prop(_w, "alignH");
			_yReal = _drawY + ce_get_prop(_w, "y")
				+ (_height - _wHeight) * ce_get_prop(_w, "alignV");
			_drawX += ce_get_prop(_w, "marginRight");
			_drawY += ce_get_prop(_w, "marginBottom");
		}

		_wXReal = _xScroll + _xReal;
		_wYReal = _yScroll + _yReal;

		#region Content style
		switch (_contentStyle)
		{
		case CE_EGuiContentStyle.Column:
			_drawY += _wHeight;
			_contentW = max(_xReal + _wWidth, _contentW);
			_contentH = max(_yReal + _wHeight, _contentH);
			break;

		case CE_EGuiContentStyle.Default:
			_contentW = max(_xReal + _wWidth, _contentW);
			_contentH = max(_yReal + _wHeight, _contentH);
			break;

		case CE_EGuiContentStyle.Grid:
			_drawX += _stepX;
			if (_drawX >= _width - _paddingRight)
			{
				_drawX = _paddingLeft;
				_drawY += _stepY;
			}
			_contentW = max(_drawX + _stepX, _contentW);
			_contentH = max(_drawY + _stepY, _contentH);
			break;

		case CE_EGuiContentStyle.Row:
			_drawX += _wWidth;
			_contentW = max(_xReal + _wWidth, _contentW);
			_contentH = max(_yReal + _wHeight, _contentH);
			break;
		}
		#endregion Content style
		break;

	case CE_EGuiPosition.Fixed:
		_wXReal = _x + ce_get_prop(_w, "x") + (_width - ce_get_prop(_w, "width"))
			* ce_get_prop(_w, "alignH");
		_wYReal = _y + ce_get_prop(_w, "y") + (_height - ce_get_prop(_w, "height"))
			* ce_get_prop(_w, "alignV");
		break;

	default:
		ce_assert(false, "Unknown widget position property");
	}
	#endregion Position style

	ce_set_prop(_w, "_xReal", _wXReal);
	ce_set_prop(_w, "_yReal", _wYReal);

	ce_gui_update_position(_w, _mouseX + _x - _wXReal, _mouseY + _y - _wYReal);
}

_contentW += _paddingRight;
_contentH += _paddingBottom;

ce_set_prop(_widget, "contentW", _contentW);
ce_set_prop(_widget, "contentH", _contentH);

if (ce_get_prop(_widget, "grow")
	&& (_width != _contentW
	|| _height != _contentH))
{
	ce_set_prop(_widget, "width", _contentW);
	ce_set_prop(_widget, "height", _contentH);
	if (_gui != noone)
	{
		ce_set_prop(_gui, "fixPositioning", true);
	}
}