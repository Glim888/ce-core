/// @func ce_input_scheme_save(scheme, filename)
/// @desc Saves the input scheme into the file.
/// @param {real} scheme The id of the input scheme.
/// @param {string} filename The name of the file to save the scheme to.
/// @return {bool} True on success.
var _scheme = argument0;
var _buffer = buffer_create(1, buffer_grow, 1);
var _actions = ce_input_scheme_get_actions(_scheme);
var _actionCount = array_length_1d(_actions);

buffer_write(_buffer, buffer_string, _scheme[? "_name"]);
buffer_write(_buffer, buffer_u8, _scheme[? "_version"]);
buffer_write(_buffer, buffer_u32, _actionCount);

var i = 0;

repeat (_actionCount)
{
	var _action = _actions[i];
	var _struct = _scheme[? _action];
	var _isString = is_string(_action);

	buffer_write(_buffer, buffer_bool, _isString);
	buffer_write(_buffer, _isString ? buffer_string : buffer_s32, _action);

	var _keys = ["pc", "gamepad"];
	var _keyCount = array_length_1d(_keys);
	var k = 0;

	buffer_write(_buffer, buffer_u8, _keyCount);

	repeat (_keyCount)
	{
		var _key = _keys[k++];

		buffer_write(_buffer, buffer_string, _key);

		if (ds_map_exists(_struct, _key))
		{
			var _list = _struct[? _key];
			var _size = ds_list_size(_list);

			buffer_write(_buffer, buffer_u32, _size);

			var j = 0;

			repeat (_size)
			{
				buffer_write(_buffer, buffer_s32, _list[| j]);
				++j;
			}
		}
		else
		{
			buffer_write(_buffer, buffer_u32, 0);
		}
	}

	++i;
}

var _compressed = buffer_compress(_buffer, 0, buffer_get_size(_buffer));
buffer_delete(_buffer);
buffer_save(_compressed, argument1);
buffer_delete(_compressed);