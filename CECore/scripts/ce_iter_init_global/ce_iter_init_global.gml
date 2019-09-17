/// @func ce_iter_init_global()
/// @desc Global initialization script for iterators.
/// @note Calling this script multiple times does not have any effect.
gml_pragma("global", "ce_iter_init_global();");

CE_PRAGMA_ONCE;

/// @var {real} A stack used for iteration context switches.
global.__ceIterStack = ds_stack_create();

/// @var {array/real} The currently iterated structure. Can be an array or an
/// id of a data structure.
global.__ceIterStruct = undefined;

/// @var {real} The type of the currently iterated structure. Equals -1 when
/// iterating an array.
global.__ceIterType = undefined;

/// @var {real} Number of left iterations in the currently iterated structure.
global.__ceIterCounter = undefined;

/// @var {string/real} The current iteration index.
global.__ceIterIndex = undefined;

/// @var {string/real} The previous iteration index.
global.__ceIterIndexPrev = undefined;

/// @var {any} The current iteration value.
global.__ceIterValue = undefined;