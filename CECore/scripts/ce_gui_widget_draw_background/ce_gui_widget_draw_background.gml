/// @func ce_gui_widget_draw_background(widget)
/// @param {real} widget The id of the widget.
var _widget = argument[0];
var _x = ce_get_prop(_widget, "_xReal");
var _y = ce_get_prop(_widget, "_yReal");
var _width = ce_get_prop(_widget, "width");
var _height = ce_get_prop(_widget, "height");

#region Background color
var _backgroundAlpha = ce_get_prop(_widget, "backgroundAlpha");
if (_backgroundAlpha > 0)
{
	ce_draw_rectangle(_x, _y, _width, _height, ce_get_prop(_widget, "backgroundColor"),
		_backgroundAlpha);
}
#endregion Background color

#region Background sprite
var _backgroundSprite = ce_get_prop(_widget, "backgroundSprite");
if (!is_undefined(_backgroundSprite))
{
	var _backgroundIndex = ce_get_prop(_widget, "backgroundIndex");
	var _backgroundX = _x + ce_get_prop(_widget, "backgroundX");
	var _backgroundY = _y + ce_get_prop(_widget, "backgroundY");
	var _backgroundWidth = ce_get_prop(_widget, "backgroundWidth");
	var _backgroundHeight = ce_get_prop(_widget, "backgroundHeight");
	var _backgroundSpriteBlend = ce_get_prop(_widget, "backgroundSpriteBlend");
	var _backgroundSpriteAlpha = ce_get_prop(_widget, "backgroundSpriteAlpha");
	var _backgroundAlignHor = ce_get_prop(_widget, "backgroundAlignHor");
	var _backgroundAlignVer = ce_get_prop(_widget, "backgroundAlignVer");

	switch (ce_get_prop(_widget, "backgroundStyle"))
	{
	case CE_EGuiBackgroundStyle.Scale:
		var _backgroundScaleX = ce_get_prop(_widget, "backgroundScaleX");
		var _backgroundScaleY = ce_get_prop(_widget, "backgroundScaleY");

		_backgroundWidth = is_undefined(_backgroundWidth)
			? _width : (sprite_get_width(_backgroundSprite) * _backgroundScaleX);
		_backgroundHeight = is_undefined(_backgroundHeight)
			? _height : (sprite_get_height(_backgroundSprite) * _backgroundScaleY);

		if (_backgroundAlignHor != 0)
		{
			_backgroundX += (_width - _backgroundWidth) * _backgroundAlignHor;
		}
		if (_backgroundAlignVer != 0)
		{
			_backgroundY += (_height - _backgroundHeight) * _backgroundAlignVer;
		}

		draw_sprite_ext(_backgroundSprite, _backgroundIndex, _backgroundX, _backgroundY,
			_backgroundScaleX, _backgroundScaleY, ce_get_prop(_widget, "backgroundRot"),
			_backgroundSpriteBlend, _backgroundSpriteAlpha);
		break;

	case CE_EGuiBackgroundStyle.Stretch:
		_backgroundWidth = is_undefined(_backgroundWidth) ? _width : _backgroundWidth;
		_backgroundHeight = is_undefined(_backgroundHeight) ? _height : _backgroundHeight;

		if (_backgroundAlignHor != 0)
		{
			_backgroundX += (_width - _backgroundWidth) * _backgroundAlignHor;
		}
		if (_backgroundAlignVer != 0)
		{
			_backgroundY += (_height - _backgroundHeight) * _backgroundAlignVer;
		}

		draw_sprite_stretched_ext(_backgroundSprite, _backgroundIndex,
			_backgroundX, _backgroundY, _width, _height, _backgroundSpriteBlend,
			_backgroundSpriteAlpha);
		break;

	case CE_EGuiBackgroundStyle.NineSlice:
		_backgroundWidth = is_undefined(_backgroundWidth) ? _width : _backgroundWidth;
		_backgroundHeight = is_undefined(_backgroundHeight) ? _height : _backgroundHeight;

		if (_backgroundAlignHor != 0)
		{
			_backgroundX += (_width - _backgroundWidth) * _backgroundAlignHor;
		}
		if (_backgroundAlignVer != 0)
		{
			_backgroundY += (_height - _backgroundHeight) * _backgroundAlignVer;
		}

		ce_draw_sprite_nine_slice(_backgroundSprite, _backgroundIndex,
			_backgroundX, _backgroundY, _width, _height, ce_get_prop(_widget, "backgroundTile"),
			_backgroundSpriteBlend, _backgroundSpriteAlpha);
		break;
	}
}
#endregion Background sprite