/// @func ce_call(id, prop[, data])
/// @desc Calls `script_execute` with a value of a property *prop* as the first
/// argument, an *id* of the object as the second argument and *data* as the third
/// argument.
/// @param {real} id The id of the object.
/// @param {string/real} prop The property identifier.
/// @param {any} [data] The data to be passed as the third argument. Defaults to
/// `undefined`.
/// @return {any} The return value of the `script_execute` call or `undefined` if
/// the object does not have given property.
var _object = argument[0];
var _prop = argument[1];
var _data = (argument_count > 2) ? argument[2] : undefined;
var _current = _object;

if (_current == noone)
{
	return;
}

while (_current != noone)
{
	if (ds_map_exists(_current, _prop))
	{
		var _script = _current[? _prop];
		if (is_undefined(_script))
		{
			return undefined;
		}
		return script_execute(_script, _current, _data);
	}
	_current = _current[? "_base"];
}

return undefined;