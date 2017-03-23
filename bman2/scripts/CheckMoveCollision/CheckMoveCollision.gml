///CheckMoveCollision(oldx, oldy, newx, newy, obj) - returns 0 for none, 1 for x, 2 for y, 3 for both
var r = 0;

if (place_meeting(argument2, argument3, argument4))
{
	if (!place_meeting(argument0, argument3, argument4))		r = 1;
	else if (!place_meeting(argument2, argument1, argument4))	r = 2;
	else														r = 3;
}

return r;