/// @func ce_delete(id)
/// @desc Destroys an instance of a class (object).
/// @param {real} id The id of the instance.
/// @note This first calls the object's class destructor, then the
/// superclass destructor etc.
/// @see ce_class_define_destructor
var _current = argument0;
while (_current != noone)
{
	var _destructor = _current[? "_destructor"];
	if (_destructor != noone)
	{
		script_execute(_destructor, _current);
	}
	_current = _current[? "_base"];
}