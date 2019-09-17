/// @func ce_array_sort(array, ascending)
/// @desc Sorts the array.
/// @param {array} array The array to sort.
/// @param {bool} ascending True to sort the values in ascending order, false
/// for descending.
/// @source https://www.geeksforgeeks.org/iterative-quick-sort/
var _array = argument0;
var _ascending = argument1;
var _size = array_length_1d(_array);
var _l = 0;
var _h = _size - 1;
var _stack = array_create(_h - _l + 1);
var _top = -1;

_stack[++_top] = _l;
_stack[++_top] = _h;

while (_top >= 0)
{
	_h = _stack[_top--];
	_l = _stack[_top--];

	#region Partition
	var _x = _array[_h];
	var i = _l - 1;
	for (var j = _l; j <= _h - 1; ++j)
	{
		if (_ascending
			? _array[j] <= _x
			: _array[j] >= _x)
		{
			++i;
			ce_array_swap(_array, i, j);
		}
	}
	ce_array_swap(_array, i + 1, _h);
	var _p = i + 1;
	#endregion Partition

	if (_p - 1 > _l)
	{
		_stack[++_top] = _l;
		_stack[++_top] = _p - 1;
	}

	if (_p + 1 < _h)
	{
		_stack[++_top] = _p + 1;
		_stack[++_top] = _h ;
	}
}