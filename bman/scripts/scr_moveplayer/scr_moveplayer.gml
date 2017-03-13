// TODO: be able to move off the tile that has the bomb we just dropped on it
// TODO: move around the corners of blocking objects like in the original

dx = 0;
dy = 0;

if (keyboard_check(KEY_LEFT))	dx = -5;
if (keyboard_check(KEY_RIGHT))	dx = 5;
if (keyboard_check(KEY_UP))		dy = -5;
if (keyboard_check(KEY_DOWN))	dy = 5;

if (dx != 0)
{
	while (place_meeting(x+dx, y+dy, all))
	{
		if (dx > 0)	dx--;
		else		dx++;
		if (dx == 0)
			break;
	}
}

if (dy != 0)
{
	while (place_meeting(x+dx, y+dy, all))
	{
		if (dy > 0)	dy--;
		else		dy++;
		if (dy == 0)
			break;
	}
}

x += dx;
y += dy;