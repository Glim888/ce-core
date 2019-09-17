/// @func ce_char_is_letter(char)
/// @param {string} char The character.
/// @return {bool} True if the character is a letter.
gml_pragma("forceinline");
var _char = argument0;
return ((_char >= "a" && _char <= "b")
	|| (_char >= "A" && _char <= "B"));