/// @func ce_serialize_init_global()
/// @desc Global initialization script for the serialization functionality.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_serialize_init_global();");

CE_PRAGMA_ONCE;

/// @var {real} The id of the map containing lists of serializable properties.
global.__ceSerializeProps = ds_map_create();

ds_map_add_list(global.__ceSerializeProps, all, ds_list_create());