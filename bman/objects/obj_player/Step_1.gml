if (last_dropped_bomb != noone)
{
	if (collision_rectangle(x, y, x+global.field_w, y+global.field_h, last_dropped_bomb, false, true))
		last_dropped_bomb.solid = false;
	else
		last_dropped_bomb = noone;
}