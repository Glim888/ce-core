/// @func find_target(id)
/// @param {real} id The id of the AI component instance.
/// @return {real} The id of the closest enemy character or `noone`.
var _id = argument0;
var _target = ce_get_prop(_id, "target")
var _targetDist;

if (instance_exists(_target))
{
	_targetDist = point_direction(x, y, _target.x, _target.y);
}
else
{
	_target = noone;
	_targetDist = infinity;
}

var _x = x;
var _y = y;
var _team = team;

with (OCharacter)
{
	if (team != _team)
	{
		var _dist = point_distance(x, y, _x, _y);
		if (_dist < _targetDist)
		{
			_target = id;
			_targetDist = _dist;
		}
	}
}

return _target;