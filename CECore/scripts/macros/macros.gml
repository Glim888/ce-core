/// @func macros()

/// @macro {code} Exits the current event/script if the game is paused.
#macro EXIT_IF_PAUSED \
	if (OMain.pause) \
	{ \
		exit; \
	}