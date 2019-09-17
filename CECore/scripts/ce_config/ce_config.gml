/// @func ce_config()
/// @desc CE configuration script.
//gml_pragma("UnityBuild", "false");

/// @macro {bool} True to enable debug.
#macro CE_DEBUG false

/// @macro {real} The width of the screen that the game is designed for,
/// ignoring the device orientation (always use the longer side).
#macro CE_DESIGN_SCREEN_WIDTH 1920

/// @macro {real} The height of the screen that the game is designed for,
/// ignoring the device orientation (always use the shorter side).
#macro CE_DESIGN_SCREEN_HEIGHT 1080

/// @macro {real} Aspect ratio of the screen that the game is designed for,
/// ignoring the device orientation.
#macro CE_DESIGN_SCREEN_ASPECT (CE_DESIGN_SCREEN_WIDTH / CE_DESIGN_SCREEN_HEIGHT)