/// @func ce_gui_root_get_display_height(gui)
/// @param {real} gui The id of the GUI.
/// @return {real} The height of the display within the GUI.
gml_pragma("forceinline");
return display_get_gui_height() / ce_get_prop(argument[0], "scale");