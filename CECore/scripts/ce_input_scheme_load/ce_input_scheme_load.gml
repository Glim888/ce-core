/// @func ce_input_scheme_load(filename)
/// @desc Loads an input scheme from a file.
/// @param {string} filename The name of the file containing the input scheme.
/// @return {real} The id of the loaded input scheme.
var _compresed = buffer_load(argument0);
var _buffer = buffer_decompress(_compresed);
buffer_delete(_compresed);

var _scheme = ce_input_scheme_create(buffer_read(_buffer, buffer_string));

var _version = buffer_read(_buffer, buffer_u8)
_scheme[? "_version"] = _version;

repeat (buffer_read(_buffer, buffer_u32))
{
	var _isString = buffer_read(_buffer, buffer_bool);
	var _action = buffer_read(_buffer, _isString ? buffer_string : buffer_s32);

	ce_input_scheme_add_action(_scheme, _action);
	var _struct = _scheme[? _action];

	repeat (buffer_read(_buffer, buffer_u8))
	{
		var _key = buffer_read(_buffer, buffer_string);
		var _list = ds_list_create();
		ds_map_add_list(_struct, _key, _list);
		var _bindCount = buffer_read(_buffer, buffer_u32);

		repeat (_bindCount)
		{
			ds_list_add(_list, buffer_read(_buffer, buffer_s32));
		}
	}
}

buffer_delete(_buffer);
return _scheme;