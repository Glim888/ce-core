/// @func ce_per_second(value)
/// @param {real} value The value to convert.
/// @return {real} The converted value.
/// @example
/// This will make the calling instance move to the right by 32px per second,
/// independently on the framerate.
/// ```gml
/// x += ce_per_second(32);
/// ```
gml_pragma("forceinline");
return (argument0 * delta_time * 0.000001);