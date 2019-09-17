/// @func ce_event_init_global()
/// @desc Global initialization script for custom events.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_event_init_global();");

CE_PRAGMA_ONCE;

/// @var {any} The current event or `undefined`.
global.__ceEvent = undefined;

/// @var {any} Additonal data for the current event or `undefined`.
global.__ceEventData = undefined;

/// @var {any} The result of the event or `undefined`.
global.__ceEventResult = undefined;