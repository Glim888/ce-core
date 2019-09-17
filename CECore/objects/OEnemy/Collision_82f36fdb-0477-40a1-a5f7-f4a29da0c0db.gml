// Move enemies which are stuck together farther away
EXIT_IF_PAUSED;

var _dir = point_direction(x, y, other.x, other.y);
x -= lengthdir_x(1, _dir);
y -= lengthdir_y(1, _dir);