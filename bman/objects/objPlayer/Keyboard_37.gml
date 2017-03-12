direction = 180;

collidedwith = collision_circle(x-5, y-(sprite_width/4), sprite_width, all, false, true);
if (collidedwith == noone)
{	
	x -= 5;
}
else
{
	//show_message("collided with " + string(collidedwith));
}
