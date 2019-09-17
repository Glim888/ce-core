/// @func ce_string_trim(str)
/// @desc Removes leading and trailing whitespace from the string.
/// @param {string} str The string to remove the whitespace from.
/// @return {string} The resulting string.
gml_pragma("forceinline");
return ce_string_triml(ce_string_trimr(argument0));