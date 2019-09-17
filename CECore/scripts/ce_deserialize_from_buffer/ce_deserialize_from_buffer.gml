/// @func ce_deserialize_from_buffer(buffer)
/// @desc Instantiates an object serialized into the buffer.
/// @param {real} buffer The id of the buffer to deserialize an instance from.
/// @return {real} The id of the created instance.
/// @example
/// Following code loads a buffer from file "save1.sav", decompresses it and
/// instantiates all contained serialized objects.
/// ```gml
/// var _compressed = buffer_load("save1.sav");
/// var _buffer = buffer_decompress(_compressed);
/// buffer_delete(_compressed);
/// buffer_seek(_buffer, buffer_seek_start, 0);
/// var _instanceCount = buffer_read(_buffer, buffer_u32);
/// repeat (_instanceCount)
/// {
///     ce_deserialize_from_buffer(_buffer);
/// }
/// buffer_delete(_buffer);
/// ```
/// @note The instance is deserialized using data from the current read position
/// of the buffer, meaning that you can deserialize multiple instances in a sequence.
/// @see ce_serialize_to_buffer
var _buffer = argument0;

var _objectName = buffer_read(_buffer, buffer_string);
var _object = asset_get_index(_objectName);
var _x = buffer_read(_buffer, buffer_f32);
var _y = buffer_read(_buffer, buffer_f32);
var _layer = buffer_read(_buffer, buffer_string);

with (instance_create_layer(_x, _y, _layer, _object))
{
	var _propCount = buffer_read(_buffer, buffer_u32);
	if (_propCount > 0)
	{
		for (var i = 0; i < _propCount; i += 2)
		{
			var _propType = buffer_read(_buffer, buffer_u32);
			var _propName = buffer_read(_buffer, buffer_string);
			var _propVal = buffer_read(_buffer, _propType);
			variable_instance_set(id, _propName, _propVal);
		}
	}
	return id;
}