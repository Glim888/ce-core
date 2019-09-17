/// @func ce_create_depth_layers()
/// @desc Creates layers for depth sort components.
/// @return {bool} True if depth layers were created or false if they already
/// existed.
if (global.__ceDepthRoomLast != room)
{
	var _size = max(floor(room_height / CE_DEPTH_SORT_ALIGN), 1);
	global.__ceDepthLayers = array_create(_size, noone);
	for (var i = 0; i < _size; ++i)
	{
		global.__ceDepthLayers[@ i] = layer_create(-i);
	}
	global.__ceDepthRoomLast = room;
	return true;
}
return false;