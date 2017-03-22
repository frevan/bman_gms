// TODO: be able to move off the tile that has the bomb we just dropped on it
// TODO: move around the corners of blocking objects like in the original

var movex = 0;
var movey = 0;
if (keyboard_check(KEY_RIGHT))	movex = 1;
if (keyboard_check(KEY_LEFT))	movex = -1;
if (keyboard_check(KEY_DOWN))	movey = 1;
if (keyboard_check(KEY_UP))		movey = -1;

if (movex != 0 || movey != 0)
{
	var curx = x + movex * global.NORMAL_SPEED;
	var cury = y + movey * global.NORMAL_SPEED;
	if (!place_empty(curx, cury))	// quick check
	{
		var done = false;
		curx = x;
		cury = y;
		while (!done)
		{
			var nextx = curx + movex;
			var nexty = cury + movey;
			if (place_meeting(nextx, nexty, obj_wall))
			{
				if (!place_meeting(curx, nexty, obj_wall))		nextx = curx;
				else if (!place_meeting(nextx, cury, obj_wall))	nexty = cury;
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
				done = (abs(curx-x) == global.NORMAL_SPEED) || (abs(cury-y) == global.NORMAL_SPEED); 
			}
		}
	}

	x = curx;
	y = cury;
}

