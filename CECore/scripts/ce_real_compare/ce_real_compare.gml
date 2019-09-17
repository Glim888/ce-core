/// @func ce_real_compare(r1, r2)
/// @desc Compares two numbers.
/// @param {real} r1 The first number.
/// @param {real} r2 The second number.
/// @return {CE_ECompare} `CE_ECompare.Equal` if the numbers are equal or
/// `CE_ECompare.Less` / `CE_ECompare.Greater` if the first number is
/// less / greater than the second number.
/// @example
/// Sorting an array of numbers using a bubble sort algorithm and this function
/// for number comparison.
/// ```gml
/// var _numbers = [3, 1, 2];
/// var _size = array_length_1d(_numbers);
/// for (var i = 0; i < _size - 1; ++i)
/// {
///     for (var j = 0; j < _size - i - 1; ++j)
///     {
///         if (ce_string_compare(_numbers[j], _numbers[j + 1]) == CE_ECompare.Greater)
///         {
///             ce_array_swap(_numbers, j, j + 1);
///         }
///     }
/// }
/// // The array is now equal to [1, 2, 3].
/// ```
gml_pragma("forceinline");
var _r1 = argument0;
var _r2 = argument1;
return ((_r1 < _r2) ? CE_ECompare.Less
	: ((_r1 > _r2) ? CE_ECompare.Greater
	: CE_ECompare.Equal));