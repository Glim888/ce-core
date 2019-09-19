/// @func ce_gui_container_add_widget(container, widget)
/// @desc Adds the widget to the container.
/// @param {real} container The id of the container.
/// @param {real} widget The id of the widget.
var _container = argument[0];
var _widget = argument[1];
var _parentGui = ce_get_prop(_container, "gui");
ce_set_prop(_widget, "gui", _parentGui);
ce_set_prop(_widget, "parent", _container);
ds_list_add(ce_get_prop(_container, "widgets"), _widget);