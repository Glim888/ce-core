/// @func ce_superclass_of(id)
/// @desc Retrieves a superclass of an object.
/// @param {real} id The id of the object.
/// @return {real} The index of the superclass definition script or `noone` if
/// the object does not have a superclass.
/// @see ce_is_instance
var _base = argument0[? "_base"];
if (_base == noone)
{
	return noone;
}
return _base[? "_class"];