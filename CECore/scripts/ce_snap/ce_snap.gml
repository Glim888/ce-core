/// @func ce_snap(value, step)
/// @desc Floors value to multiples of step using formula
/// `floor(value / step) * step`.
/// @param {real} value The value.
/// @param {real} step The step.
/// @return {real} The resulting value.
/// @example
/// ```gml
/// ce_snap(3.8, 2); // => 2
/// ce_snap(4.2, 2); // => 4
/// ```
gml_pragma("forceinline");
return floor(argument0 / argument1) * argument1;