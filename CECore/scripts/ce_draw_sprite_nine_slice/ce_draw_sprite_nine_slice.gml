/// @func ce_draw_sprite_nine_slice(sprite, subimage, x, y, width, height, tiled[, color[, alpha]])
/// @desc Draws a nine-slice sprite.
/// @param {real} sprite The nine slice sprite to draw.
/// @param {real} subimage The subimage of the sprite to draw.
/// @param {real} x The x position to draw the sprite at.
/// @param {real} y The y position to draw the sprite at.
/// @param {real} width The width to which the sprite should be stretched.
/// @param {real} height The height to which the sprite should be stretched.
/// @param {bool} tiled True to tile the sprite of false to stretch.
/// @param {real} [color] The color to blend the sprite with. Defaults to
/// `c_white`.
/// @param {real} [alpha] The opacity of the sprite. Defaults to 1.
/// @note Currently it is not supported to use width and height smaller than
/// the size of the original image.
var _sprite = argument[0];
var _spriteWidth = sprite_get_width(_sprite);
var _spriteHeight = sprite_get_height(_sprite);

var _sliceX = _spriteWidth / 3;
var _sliceX2 = _sliceX * 2;
var _sliceY = _spriteHeight / 3;
var _sliceY2 = _sliceY * 2;

var _subimage = argument[1];
var _x = argument[2];
var _y = argument[3];
var _width = max(argument[4], _sliceX2);
var _height = max(argument[5], _sliceY2);
var _tile = argument[6];
var _color = (argument_count > 7) ? argument[7] : c_white;
var _alpha = (argument_count > 8) ? argument[8] : 1;

var _widthInner = _width - _sliceX2;
var _heightInner = _height - _sliceY2;

var _scaleHor = _widthInner / _sliceX;
var _scaleVer = _heightInner / _sliceY;

var _centerX = _x + _sliceX;
var _centerY = _y + _sliceY;
var _rightX = _x + _width - _sliceX;
var _bottomY = _y + _height - _sliceY;

if (!_tile)
{
	// Top edge
	draw_sprite_part_ext(_sprite, _subimage, _sliceX, 0,
		_sliceX, _sliceY, _centerX, _y, _scaleHor, 1, _color, _alpha);

	// Left edge
	draw_sprite_part_ext(_sprite, _subimage, 0, _sliceY,
		_sliceX, _sliceY, _x, _centerY, 1, _scaleVer, _color, _alpha);

	// Center
	draw_sprite_part_ext(_sprite, _subimage, _sliceX, _sliceY,
		_sliceX, _sliceY, _centerX, _centerY, _scaleHor, _scaleVer, _color, _alpha);

	// Right edge
	draw_sprite_part_ext(_sprite, _subimage, _sliceX2, _sliceY,
		_sliceX, _sliceY, _rightX, _centerY, 1, _scaleVer, _color, _alpha);

	// Bottom edge
	draw_sprite_part_ext(_sprite, _subimage, _sliceX, _sliceY2,
		_sliceX, _sliceY, _centerX, _bottomY, _scaleHor, 1, _color, _alpha);
}
else
{
	var _drawX = _centerX;

	while (_drawX < _centerX + _widthInner)
	{
		var _drawY = _centerY;
		while (_drawY < _centerY + _heightInner)
		{
			// Center
			draw_sprite_part_ext(_sprite, _subimage, _sliceX, _sliceY,
				_sliceX, _sliceY, _drawX, _drawY, 1, 1, _color, _alpha);
			_drawY += _sliceY;
		}
		_drawX += _sliceX;
	}

	_drawX = _centerX;

	var _drawY = _centerY;
	while (_drawY < _centerY + _heightInner)
	{
		// Left edge
		draw_sprite_part_ext(_sprite, _subimage, 0, _sliceY,
			_sliceX, _sliceY, _x, _drawY, 1, 1, _color, _alpha);
		// Right edge
		draw_sprite_part_ext(_sprite, _subimage, _sliceX2, _sliceY,
			_sliceX, _sliceY, _rightX, _drawY, 1, 1, _color, _alpha);
		_drawY += _sliceY;
	}

	while (_drawX < _x + _width - _sliceX)
	{
		// Top edge
		draw_sprite_part_ext(_sprite, _subimage, _sliceX, 0,
			_sliceX, _sliceY, _drawX, _y, 1, 1, _color, _alpha);

		// Bottom edge
		draw_sprite_part_ext(_sprite, _subimage, _sliceX, _sliceY2,
			_sliceX, _sliceY, _drawX, _bottomY, 1, 1, _color, _alpha);

		_drawX += _sliceX;
	}
}

// Top left corner
draw_sprite_part_ext(_sprite, _subimage, 0, 0,
	_sliceX, _sliceY, _x, _y, 1, 1, _color, _alpha);

// Top right corner
draw_sprite_part_ext(_sprite, _subimage, _sliceX2, 0,
	_sliceX, _sliceY, _rightX, _y, 1, 1, _color, _alpha);

// Bottom left corner
draw_sprite_part_ext(_sprite, _subimage, 0, _sliceX2,
	_sliceX, _sliceY, _x, _bottomY, 1, 1, _color, _alpha);

// Bottom right corner
draw_sprite_part_ext(_sprite, _subimage, _sliceX2, _sliceY2,
	_sliceX, _sliceY, _rightX, _bottomY, 1, 1, _color, _alpha);