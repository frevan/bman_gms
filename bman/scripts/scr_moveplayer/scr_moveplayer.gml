// TODO: be able to move off the tile that has the bomb we just dropped on it
// TODO: move around the corners of blocking objects like in the original

movex = 0;
movey = 0;
if (keyboard_check(KEY_LEFT))	movex = -1;
if (keyboard_check(KEY_RIGHT))	movex = 1;
if (keyboard_check(KEY_UP))		movey = -1;
if (keyboard_check(KEY_DOWN))	movey = 1;

dx = 0;
dy = 0;
done = false;
while (!done)
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

	dx += movex;
	dy += movey;
	
	done = (abs(dx) >= abs(SPEED_NORMAL*movex) && abs(dy) >= abs(SPEED_NORMAL*movey));
}

x += dx;
y += dy;