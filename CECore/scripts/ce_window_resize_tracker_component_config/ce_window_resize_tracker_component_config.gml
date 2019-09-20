/// @func ce_window_resize_tracker_component_config()

/// @macro {string} The id of the event triggered when a window is resized.
/// The event data will hold an array
/// `[windowWidth, windowHeight, previousWindowWidth, previousWindowHeight, scale]`.
#macro CE_EV_WINDOW_RESIZE "ceWindowResize"