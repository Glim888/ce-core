/// @func ce_cast(id, class)
/// @desc Casts an instance of some class (object) to another class, which it
/// must inherit from or be identical with.
/// @param {real} id The id of the object.
/// @param {real} class The index of the class definition script.
var _object = argument0;
var _class = argument1;

var _current = _object;
while (_current != noone)
{
	if (_current[? "_class"] == _class)
	{
		return _current;
	}
	_current = _current[? "_base"];
}

ce_assert(false, "Cannot cast instance of " + script_get_name(_object[? "_class"])
	+ " to " + script_get_name(_class) + "!");