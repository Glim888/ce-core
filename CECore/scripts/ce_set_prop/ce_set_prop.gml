/// @func ce_set_prop(id, prop, value)
/// @desc Sets value of object's property.
/// @param {real} id The id of the object.
/// @param {string/real} prop The property identifier.
/// @param {any} value The new property value.
/// @return {bool} True if the property value was set or false if the object
/// does not have the property.
var _object = argument0;
var _prop = argument1;
var _value = argument2;

var _current = _object;
while (_current != noone)
{
	if (ds_map_exists(_current, _prop))
	{
		_current[? _prop] = _value;
		return true;
	}
	_current = _current[? "_base"];
}

return false;