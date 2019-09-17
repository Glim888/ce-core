/// @func ce_iter_config()
/// @desc Configuration script for iterators.

/// @macro {string/real} The current index in the iteration.
#macro CE_ITER_INDEX global.__ceIterIndexPrev

/// @macro {any} The current value in the iteration.
#macro CE_ITER_VALUE global.__ceIterValue

/// @macro {code} Breaks the current iteration (equivalent of `break`).
#macro CE_ITER_BREAK { _ce_iter_restore_context(); break; }

/// @macro {code} Goes to the next step in the iteration (equivalent of `continue`).
#macro CE_ITER_CONTINUE continue