/// @func ce_object_get_base(object)
/// @param {real} object The object index.
/// @return {real} The index of the base object in the object's ancestors
/// hierarchy.
/// @example
/// If object `C` has parent `B` and object `B` has parent `A`, then
/// `ce_object_get_base(C) would return `A`.
var _object = argument0;
while (true)
{
	var _parent = object_get_parent(_object);
	if (_parent < 0)
	{
		return _object;
	}
	_object = _parent;
}