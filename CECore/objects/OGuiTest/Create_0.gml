root = ce_gui_root_create();

container = ce_gui_container_create();
ce_set_prop(container, "backgroundSprite", SprNineSlice);
ce_set_prop(container, "backgroundAlpha", 1);
ce_set_prop(container, "backgroundStyle", CE_EGuiBackgroundStyle.NineSlice);
ce_set_prop(container, "x", 32);
ce_set_prop(container, "y", 32);
ce_set_prop(container, "width", 200);
ce_set_prop(container, "height", 150);
ce_call(root, "add_widget", container);