/// @func ce_array_clone(array)
/// @desc Creates a shallow copy of the array.
/// @param {array} array The array to copy.
/// @return {array} The created array.
var _arr = argument0;
var _size = array_length_1d(_arr);
var _clone = array_create(_size, 0);
array_copy(_clone, 0, _arr, 0, _size);
return _clone;