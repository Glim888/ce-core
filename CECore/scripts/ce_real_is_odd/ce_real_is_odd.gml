/// @func ce_real_is_odd(number)
/// @param {real} number The number to check.
/// @return {bool} True if the number is odd.
gml_pragma("forceinline");
return (argument0 & $1 == 1);