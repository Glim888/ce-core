/// @func ce_is_instance(id, class)
/// @desc Checks whether an object is an instance of a class or if it inherits
/// from it.
/// @param {real} id The id of the object.
/// @param {real} class The index of the class definition script.
/// @return {bool} True if the instance is an instance of / inherits from the class.
/// @example If a class *C* inherits from *B* and *B* inherits from *A*, then
/// `ce_is_instance(ce_make_instance(C), A)` returns `true`.
/// @see ce_class_of
/// @see ce_superclass_of
var _inst = argument0;
var _class = argument1;

while (_inst != noone && !is_undefined(_inst))
{
	if (_inst[? "_class"] == _class)
	{
		return true;
	}
	_inst = _inst[? "_base"];
}

return false;