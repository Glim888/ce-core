/// @func ce_scale_keep_aspect(targetW, targetH, width, height)
/// @param {real} targetW The target width.
/// @param {real} targetH The target height.
/// @param {real} width The original width.
/// @param {real} height The original height.
/// @return {real} The scale.
var _targetW = argument0;
var _targetH = argument1;
var _width = argument2;
var _height = argument3;
var _prevAspect = _targetW / _targetH;
var _imgAspect = _width / _height;
if (_prevAspect > _imgAspect)
{
	return _targetH / _height;
}
return _targetW / _width;