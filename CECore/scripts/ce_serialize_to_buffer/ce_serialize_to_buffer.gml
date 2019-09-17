/// @func ce_serialize_to_buffer(id, buffer[, props])
/// @desc Serializes an instance to a buffer.
/// @param {real} id The id of the instance to be serialized.
/// @param {real} buffer The id of the buffer to serialize instance to.
/// @param {real} [props] An id of a list containing object properties
/// to serialize. If not provided, it will be built automatically using
/// `ce_get_serializable_properties`. When serializing a large number
/// of instances of the same object in a row, the script can be much
/// faster with the list provided!
/// @return {array} The created array containing the serialized instance.
/// @example
/// Following code serializes instances of objects `OPlayer` and `OEnemy`
/// into a buffer, which is then compressed and saved into a file "save1.sav".
/// ```gml
/// var _buffer = buffer_create(1, buffer_grow, 1);
/// buffer_seek(_buffer, buffer_seek_start, 0);
/// // Write number of all instances (player + enemies).
/// ce_buffer_write(_buffer, buffer_u32, 1 + instance_number(OEnemy));
/// // The player is only one, so this will be fast.
/// ce_serialize_to_buffer(OPlayer, _buffer, _props);
/// // There is a lot of enemies, so it's better to create the property list
/// // beforehand.
/// var _props = ce_get_serializable_properties(OEnemy);
/// with (OEnemy)
/// {
///     ce_serialize_to_buffer(id, _buffer, _props);
/// }
/// ds_list_destroy(_props);
/// var _compressed = buffer_compress(_buffer);
/// buffer_delete(_buffer);
/// buffer_save(_compressed, "save.sav");
/// buffer_delete(_compressed);
/// ```
/// @note The instance is serialized at the current write position of the buffer,
/// meaning that you can serialize multiple instances in a sequence.
/// @see ce_get_serializable_properties
/// @see ce_deserialize_from_buffer
var _id = argument[0];
var _objectIndex = _id.object_index;
var _buffer = argument[1];
var _propsGiven = (argument_count > 2);
var _props = _propsGiven ? argument[2] : ce_get_serializable_properties(_objectIndex);
var _propsSize = ds_list_size(_props);
var _objectName = object_get_name(_objectIndex);

buffer_write(_buffer, buffer_string, _objectName);
buffer_write(_buffer, buffer_f32, _id.x);
buffer_write(_buffer, buffer_f32, _id.y);
buffer_write(_buffer, buffer_string, layer_get_name(_id.layer));
buffer_write(_buffer, buffer_u32, _propsSize);

for (var i = 0; i < _propsSize; i += 2)
{
	var _propType = _props[| i]
	var _propName = _props[| i + 1];
	buffer_write(_buffer, buffer_u32, _propType);
	buffer_write(_buffer, buffer_string, _propName);
	buffer_write(_buffer, _propType,
		variable_instance_get(_id, _propName));
}

if (!_propsGiven)
{
	ds_list_destroy(_props);
}