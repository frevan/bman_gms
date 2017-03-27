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
			
			// check collision with walls
			if (!done)
			{
				var r = CheckMoveCollision(curx, cury, nextx, nexty, obj_wall);
				if (r == 1)			nextx = curx;
				else if (r == 2)	nexty = cury;
				else if (r == 3)	done = true;
			}
			
			// check collisions with bombs
			if (!done)
			{
				var r = CheckMoveCollisionWithAllBombs(curx, cury, nextx, nexty);
				if (r == 1)			nextx = curx;
				else if (r == 2)	nexty = cury;
				else if (r == 3)	done = true;
			}

			if (!done)
			{
				done = false;
				if (movex != 0)	done |= (abs(nextx-x) == global.NORMAL_SPEED) || (curx == nextx && movey == 0);
				if (movey != 0)	done |= (abs(nexty-y) == global.NORMAL_SPEED) || (cury == nexty && movex == 0);
			}
			
			if (!done)
			{
				curx = nextx;
				cury = nexty;
			}
		}
	}

	x = curx;
	y = cury;
}

