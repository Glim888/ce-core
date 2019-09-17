/// @func ce_serialize_to_array(id[, props])
/// @desc Serializes an instance to an array.
/// @param {real} id The id of the instance to be serialized.
/// @param {real} [props] An id of a list containing object properties
/// to serialize. If not provided, it will be built automatically using
/// `ce_get_serializable_properties`. When serializing a large number
/// of instances of the same object in a row, the script can be much
/// faster with the list provided!
/// @return {array} The created array containing the serialized instance.
/// @example
/// ```gml
/// // Player is only one, so this will be fast.
/// ce_serialize_to_array(OPlayer, _props);
/// // There is a lot of enemies, so it's better to create the property
/// // list beforehand.
/// var _props = ce_get_serializable_properties(OEnemy);
/// with (OEnemy)
/// {
///     ce_serialize_to_array(id, _props);
/// }
/// ds_list_destroy(_props);
/// ```
/// @see ce_get_serializable_properties
/// @see ce_deserialize_from_array
var _id = argument[0];
var _objectIndex = _id.object_index;
var _propsGiven = (argument_count > 1);
var _props = _propsGiven ? argument[1] : ce_get_serializable_properties(_objectIndex);
var _propsSize = ds_list_size(_props);
var _objectName = object_get_name(_objectIndex);
var _arrSize = 4 // object, x, y, layer
	+ 1 + _propsSize; // property counter + properties
var _arr = array_create(_arrSize, 0);

var a = 0;
_arr[a++] = _objectName;
_arr[a++] = _id.x;
_arr[a++] = _id.y;
_arr[a++] = layer_get_name(_id.layer);
_arr[a++] = _propsSize;

for (var i = 0; i < _propsSize; i += 2)
{
	var _propName = _props[| i + 1];
	_arr[a++] = _propName;
	_arr[a++] = variable_instance_get(_id, _propName);
}

if (!_propsGiven)
{
	ds_list_destroy(_props);
}

return _arr;