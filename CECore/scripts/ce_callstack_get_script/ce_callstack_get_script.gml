/// @func ce_callstack_get_script([level])
/// @desc Gets a script index from the callstack.
/// @param {real} [level] 0 means the script from which this one was called,
/// 1 means the script which called another script from which this one was
/// called etc. Defaults to 0.
/// @return {real} The index of the script or -1 if there is not a script
/// in the callstack on given level.
var _callstack = debug_get_callstack();
var _current = _callstack[1 + ((argument_count > 0) ? argument[0] : 0)];
var _pos = string_pos(":", _current);
var _scriptName = string_copy(_current, 12, _pos - 12);
return asset_get_index(_scriptName);