/// @func ce_gui_mouse_x([root])
/// @param {real} [root] The id of the GUI. If not specified and a GUI is
/// currently being rendered, then argument defaults to its id.
/// @return {real} The mouse x coordinate.
gml_pragma("forceinline");
return ce_get_prop((argument_count > 0 ? argument[0] : global.__ceGuiCurrent), "mouseX");