dx = 0;
dy = 0;

if (keyboard_check(vk_left))	dx = -5;
if (keyboard_check(vk_right))	dx = 5;
if (keyboard_check(vk_up))		dy = -5;
if (keyboard_check(vk_down))	dy = 5;


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