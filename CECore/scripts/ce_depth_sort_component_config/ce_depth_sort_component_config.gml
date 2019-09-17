/// @func ce_depth_sort_component_config()
/// @desc Configuration script for the depth sort component.

/// @macro {real} The higher the value, the less depth layers are created.
/// Minimum is 1, maximum is the room height. Higher values may increase
/// performance, but they may also produce visual artifacts.
#macro CE_DEPTH_SORT_ALIGN 2