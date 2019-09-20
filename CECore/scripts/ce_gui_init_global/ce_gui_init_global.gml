/// @func ce_gui_init_global()
/// @desc Global intialization script for the GUI system.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_gui_init_global();");

CE_PRAGMA_ONCE;

/// @var {real} The id of the GUI root that is currently being updated/rendered
/// or `noone`.
global.__ceGuiCurrent = noone;