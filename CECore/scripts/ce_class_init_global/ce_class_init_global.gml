/// @func ce_class_init_global()
/// @desc Global initialization script of the class system.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_class_init_global();");

CE_PRAGMA_ONCE;

/// @var {real} Mapping of class definition scipts to crated class descriptors.
global.__ceClasses = ds_map_create();