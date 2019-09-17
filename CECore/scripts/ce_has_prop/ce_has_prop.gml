/// @func ce_has_prop(id, prop)
/// @desc Checks whether an object has own or inherited property.
/// @param {real} id The id of the object.
/// @param {string/real} prop The property identifier.
/// @return {bool} True if the object has or inherits the property.
/// @see ce_has_own_property
var _object = argument0;
var _prop = argument1;

var _current = _object;
while (_current != noone)
{
	if (ds_map_exists(_current, _prop))
	{
		return true;
	}
	_current = _current[? "_base"];
}

return false;