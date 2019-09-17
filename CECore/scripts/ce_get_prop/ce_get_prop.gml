/// @func ce_get_prop(id, prop)
/// @desc Retrieves a value of object's property.
/// @param {real} id The id of the object.
/// @param {string/real} prop The property identifier.
/// @return {any} The property value or `undefined` if the object does not have
/// the property.
/// @see ce_has_prop
/// @see ce_has_own_prop
var _object = argument0;
var _prop = argument1;

var _current = _object;
while (_current != noone)
{
	if (ds_map_exists(_current, _prop))
	{
		return _current[? _prop];
	}
	_current = _current[? "_base"];
}

return undefined;