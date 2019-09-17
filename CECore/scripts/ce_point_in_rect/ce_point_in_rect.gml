/// @func ce_point_in_rect(pointX, pointY, rectX, rectY, rectWidth, rectHeight)
/// @param {real} pointX The x position of the point.
/// @param {real} pointY The y position of the point.
/// @param {real} rectX The x position of the rectangle's top left corner.
/// @param {real} rectY The y position of the rectangle's top left corner.
/// @param {real} rectWidth The width of the rectangle.
/// @param {real} rectHeight The height of the rectangle.
/// @return {bool} True if the point is in the rectangle.
gml_pragma("forceinline");
var _pointX = argument0;
var _pointY = argument1;
var _rectX = argument2;
var _rectY = argument3;
return (_pointX > _rectX
	&& _pointY > _rectY
	&& _pointX < _rectX + argument4
	&& _pointY < _rectY + argument5);