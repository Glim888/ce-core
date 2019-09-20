/// @func ce_window_resize_tracker_component_on_update(id)
/// @param {real} id The id of the window resize tracker component object.
var _windowResize = argument[0];
var _windowWidth = window_get_width();
var _windowHeight = window_get_height();

var _windowInit = ce_get_prop(_windowResize, "windowInit");
var _widthPrev = ce_get_prop(_windowResize, "widthPrevious");
var _heightPrev = ce_get_prop(_windowResize, "heightPrevious");

if (_windowInit
	|| _windowWidth != _widthPrev
	|| _windowHeight != _heightPrev)
{
	var _scale;
	if (_windowWidth > _windowHeight)
	{
		_scale = ce_scale_keep_aspect(
			_windowWidth,
			_windowHeight,
			CE_DESIGN_SCREEN_WIDTH,
			CE_DESIGN_SCREEN_HEIGHT);
	}
	else
	{
		_scale = ce_scale_keep_aspect(
			_windowWidth,
			_windowHeight,
			CE_DESIGN_SCREEN_HEIGHT,
			CE_DESIGN_SCREEN_WIDTH);
	}

	if (!_windowInit)
	{
		ce_trigger_event(CE_EV_WINDOW_RESIZE, [
			_windowWidth,
			_windowHeight,
			_widthPrev,
			_heightPrev,
			_scale
		]);
	}

	ce_set_prop(_windowResize, "widthPrevious", _windowWidth);
	ce_set_prop(_windowResize, "heightPrevious", _windowHeight);
	ce_set_prop(_windowResize, "windowInit", false);
}