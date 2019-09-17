/// @func ce_depth_sort_component_on_add(depthSortComponent)
/// @desc A script executed when an instance of a depth sort component is added
/// to an object instance.
/// @param {real} depthSortComponent The id of the depth sort component instance.
ce_super(argument[0], "onAdd");
ce_create_depth_layers();