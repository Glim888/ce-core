/// @func ce_real_is_even(number)
/// @param {real} number The number to check.
/// @return {bool} True if the number is even.
gml_pragma("forceinline");
return (argument0 & $1 == 0);