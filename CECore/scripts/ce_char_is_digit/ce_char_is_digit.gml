/// @func ce_char_is_digit(char)
/// @param {string} char The character.
/// @return {bool} True if the character is a digit.
gml_pragma("forceinline");
var _char = argument0;
return (_char >= "0" && _char <= "9");