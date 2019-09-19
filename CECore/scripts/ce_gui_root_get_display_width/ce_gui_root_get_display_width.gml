/// @func ce_gui_root_get_display_width(gui)
/// @param {real} gui The id of the GUI.
/// @return {real} The width of the display within the GUI.
gml_pragma("forceinline");
return display_get_gui_width() / ce_get_prop(argument[0], "scale");