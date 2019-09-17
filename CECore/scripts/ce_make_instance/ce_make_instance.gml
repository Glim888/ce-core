/// @func ce_make_instance(class)
/// @desc Creates a new instance (object) of a class.
/// @param {real} class The index of the class definition script.
/// @return {real} The id of the created object.
/// @see ce_get_instance
var _class = argument0;

script_execute(_class); // Create class descriptor
var _descriptor = global.__ceClasses[? _class];
var _inst = ce_ds_map_clone(_descriptor);

var _current = _inst;
while (true)
{
	var _base = _current[? "_base"];
	if (_base != noone)
	{
		var _baseDescriptor = global.__ceClasses[? _base];
		var _newBase = ce_ds_map_clone(_baseDescriptor);
		ds_map_delete(_current, "_base");
		ds_map_add_map(_current, "_base", _newBase);
		_current = _newBase;
	}
	else
	{
		break;
	}
}

return _inst;