switch (ce_get_event())
{
case CE_EV_WINDOW_RESIZE:
	var _data = ce_get_event_data();
	var _windowWidth = _data[0];
	var _windowHeight= _data[1];
	var _scale = _data[4];
	display_set_gui_size(_windowWidth, _windowHeight);
	display_set_gui_maximize(_scale, _scale);
	ce_set_prop(root, "scale", _scale);
	break;
}