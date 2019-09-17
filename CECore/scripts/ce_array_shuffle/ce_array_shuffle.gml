/// @func ce_array_shuffle(array)
/// @desc Shuffles the values within the array, ordering them randomly.
/// @param {array} array The array to shuffle.
var _arr = argument0;
var _length = array_length_1d(_arr);
var _lengthMinus1 = _length - 1;
var _seed = random_get_seed();
randomize();
repeat (_length)
{
	ce_array_swap(_arr, irandom(_lengthMinus1), irandom(_lengthMinus1));
}
random_set_seed(_seed);