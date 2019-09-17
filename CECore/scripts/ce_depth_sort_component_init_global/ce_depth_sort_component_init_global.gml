/// @func ce_depth_sort_component_init_global()
/// @desc Global initialization script for the depth sort component.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_depth_sort_component_init_global();");

CE_PRAGMA_ONCE;

/// @var {array[real]} Array of layers.
global.__ceDepthLayers = [];

/// @var {real} The id of the last room or `noone`.
global.__ceDepthRoomLast = noone;