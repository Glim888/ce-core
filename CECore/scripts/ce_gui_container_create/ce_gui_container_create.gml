/// @func ce_gui_container_create()
/// @return {real}
var _container = ce_make_instance(ce_gui_container_class);
ce_call(_container, "_init");
return _container;