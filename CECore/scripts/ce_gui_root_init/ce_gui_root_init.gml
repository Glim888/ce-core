/// @func ce_gui_root_init(root)
/// @param {real} root
var _root = argument[0];
ce_super(_root, "_init");
ce_set_prop(_root, "destroyList", ds_list_create());