/// @func ce_object_is(a, b)
/// @param {real} a The index of object A.
/// @param {real} b The index of object B.
/// @return {bool} True if object A is or inherits from object B.
var _a = argument0;
var _b = argument1;
return (_a == _b || object_is_ancestor(_a, _b));