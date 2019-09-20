root = ce_gui_root_create();

container = ce_gui_container_create();
ce_set_prop(container, "backgroundSprite", SprNineSlice);
ce_set_prop(container, "backgroundAlpha", 1);
ce_set_prop(container, "backgroundStyle", CE_EGuiBackgroundStyle.NineSlice);
ce_gui_set_rectangle(container, 32, 32, 200, 150);
ce_call(root, "add_widget", container);