/// @func ce_macro_config()
/// @desc Configuration script with handy macro definitions.

/// @macro {code} A macro which ensures that the code after it in a script /
/// object (not instance!) event is executed only once.
#macro CE_PRAGMA_ONCE \
	do \
	{ \
		if (!variable_global_exists("__cePragmaOnce")) \
		{ \
			global.__cePragmaOnce = ds_map_create(); \
		} \
		var __callstack__ = debug_get_callstack(); \
		var __current__ = __callstack__[0]; \
		if (ds_map_exists(global.__cePragmaOnce, __current__)) \
		{ \
			exit; \
		} \
		global.__cePragmaOnce[? __current__] = 1; \
	} \
	until (1)