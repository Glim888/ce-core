/// @func ce_gui_root_add_widget(root, widget)
/// @desc Adds the widget to the GUI root widget.
/// @param {real} root The id of the GUI root widget.
/// @param {real} widget The id of the widget.
var _root = argument[0];
var _widget = argument[1];
ce_set_prop(_widget, "gui", _root);
ds_list_add(ce_get_prop(_root, "widgets"), _widget);
// TODO: Update the "gui" property recursively for child widgets.