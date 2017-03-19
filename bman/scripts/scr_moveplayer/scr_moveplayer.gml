// TODO: be able to move off the tile that has the bomb we just dropped on it
// TODO: move around the corners of blocking objects like in the original

movex = 0;
movey = 0;
if (keyboard_check(KEY_LEFT))	movex = -1;
if (keyboard_check(KEY_RIGHT))	movex = 1;
if (keyboard_check(KEY_UP))		movey = -1;
if (keyboard_check(KEY_DOWN))	movey = 1;

if (movex != 0 || movey != 0)
{
	done = false;
	curx = x;
	cury = y;
	while (!done)
	{
		nextx = curx + movex;
		nexty = cury + movey;
		if (!place_free(nextx, nexty))
		{
			if (place_free(curx, nexty))		nextx = curx;
			else if (place_free(nextx, cury))	nexty = cury;
			else								
			{
				done = true;
				continue;
			}
		}
		
		done = (curx == nextx && cury == nexty);
		if (!done)
		{
			curx = nextx;
			cury = nexty;
			done = (abs(curx-x) == SPEED_NORMAL) || (abs(cury-y) == SPEED_NORMAL); 
		}
	}

	x = curx;
	y = cury;
}
