/// @func ce_string_compare(s1, s2)
/// @desc Compares the first string to the second string.
/// @param {string} s1 The first string.
/// @param {string} s2 The seconds string.
/// @return {CE_ECompare} `CE_ECompare.Equal` when the strings are equal or
/// `CE_ECompare.Less` / `CE_ECompare.Greater` when the first one goes
/// before / after the second one.
/// @example Sorting an array of strings using a bubble sort algorithm and this
/// function for string comparison.
/// ```gml
/// var _names = ["John", "Adam", "David"];
/// var _size = array_length_1d(_names);
/// for (var i = 0; i < _size - 1; ++i)
/// {
///     for (var j = 0; j < _size - i - 1; ++j)
///     {
///         if (ce_string_compare(_names[j], _names[j + 1]) == CE_ECompare.Greater)
///         {
///             ce_array_swap(_names, j, j + 1);
///         }
///     }
/// }
/// // The array is now equal to ["Adam", "David", "John"].
/// ```
var _s1 = argument0;
var _s2 = argument1;
var _c0, _c1, i = 1;
do
{
	_c0 = string_char_at(_s1, i);
	_c1 = string_char_at(_s2, i++);
	if (_c0 == _c1)
	{
		continue;
	}
	if (_c0 < _c1)
	{
		return CE_ECompare.Less;
	}
	return CE_ECompare.Greater;
}
until (_c0 == "" && _c1 == "");
return CE_ECompare.Equal;