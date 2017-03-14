// TODO: be able to move off the tile that has the bomb we just dropped on it
// TODO: move around the corners of blocking objects like in the original

dx = 0;
dy = 0;
if (keyboard_check(KEY_LEFT))	dx = -SPEED_NORMAL;
if (keyboard_check(KEY_RIGHT))	dx = SPEED_NORMAL;
if (keyboard_check(KEY_UP))		dy = -SPEED_NORMAL;
if (keyboard_check(KEY_DOWN))	dy = SPEED_NORMAL;

curfield = pos_to_field(x, y);

if (dx != 0 || dy != 0)
{
	fieldx = x_to_fieldx(x);
	fieldy = y_to_fieldy(y);
	if (!place_free(fieldx, fieldy))
	{
		// TODO: collision
	}

	/*
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
	*/

	x += dx;
	y += dy;
}