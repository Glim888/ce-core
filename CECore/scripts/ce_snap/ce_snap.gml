/// @func ce_snap(value, step)
/// @param {real} value
/// @param {real} step
/// @return {real}
gml_pragma("forceinline");
return floor(argument0 / argument1) * argument1;