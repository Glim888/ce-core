if (hp <= 0)
{
	instance_destroy();
}

// Keep the character within the room
if (x < 0)
{
	x = 0;
}

if (y < 0)
{
	y = 0;
}

if (x > room_width)
{
	x = room_width;
}

if (y > room_height)
{
	y = room_height;
}