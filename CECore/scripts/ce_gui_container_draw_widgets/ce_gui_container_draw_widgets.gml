/// @func ce_gui_container_draw_widgets(container)
/// @param {real} container The id of the container.
var _widgets = ce_get_prop(argument[0], "widgets");
var _index = 0;
repeat (ds_list_size(_widgets))
{
	ce_call(_widgets[| _index++], "draw");
}