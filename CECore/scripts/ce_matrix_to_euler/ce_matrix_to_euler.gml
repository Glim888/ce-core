/// @func ce_matrix_to_euler(m)
/// @desc Gets euler angles from the YXZ rotation matrix.
/// @param {array} m The YXZ rotation matrix.
/// @return {array} An array containing the euler angles `[rotX, rotY, rotZ]`.
/// @source https://www.geometrictools.com/Documentation/EulerAngles.pdf
var _m = argument0;
var _thetaX, _thetaY, _thetaZ;

var _m6 = _m[6];

if (_m6 < 1)
{
	if (_m6 > -1)
	{
		_thetaX = arcsin(-_m6);
		_thetaY = arctan2(_m[2], _m[10]);
		_thetaZ = arctan2(_m[4], _m[5]);
	}
	else
	{
		_thetaX = pi * 0.5;
		_thetaY = -arctan2(-_m[1], _m[0]);
		_thetaZ = 0;
	}
}
else
{
	_thetaX = -pi * 0.5;
	_thetaY = arctan2(-_m[1], _m[0]);
	_thetaZ = 0;
}

return [
	(360 + radtodeg(_thetaX)) mod 360,
	(360 + radtodeg(_thetaY)) mod 360,
	(360 + radtodeg(_thetaZ)) mod 360
];