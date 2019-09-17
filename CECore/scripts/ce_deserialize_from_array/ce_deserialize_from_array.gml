/// @func ce_deserialize_from_array(array)
/// @desc Instantiates an object serialized into the array.
/// @param {array} array The array to deserialize an instance from.
/// @return {real} The id of the created instance.
/// @see ce_serialize_to_array
var _arr = argument0;

var a = 0;
var _objectName = _arr[a++];
var _object = asset_get_index(_objectName);
var _x = _arr[a++];
var _y = _arr[a++];
var _layer = _arr[a++];

with (instance_create_layer(_x, _y, _layer, _object))
{
	var _propCount = _arr[a++];
	for (var i = 0; i < _propCount; i += 2)
	{
		var _propName = _arr[a++];
		var _propVal = _arr[a++];
		variable_instance_set(id, _propName, _propVal);
	}
	return id;
}