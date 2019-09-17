/// @func ce_init_components()
/// @desc Initializes the component system within the calling instance. This
/// must be executed in every instance in which you want to use the component
/// system before it executes any other component system scripts!

/// @var {real} List of instance's components.
__ceComponents = ds_list_create();