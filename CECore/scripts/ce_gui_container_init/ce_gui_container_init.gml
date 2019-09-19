/// @func ce_gui_container_init(container)
/// @param {real} container
var _container = argument[0];
ce_super(_container, "_init");
ce_set_prop(_container, "widgets", ds_list_create());