if (keyboard_check(KEY_DROPBOMB))
{
	var bombfield_x = x_to_field(x);
	var bombfield_y = y_to_field(y);
	if (global.field_array[bombfield_x, bombfield_y] != global.FIELD_BOMB)
	{	
		var bombx = field_to_x(bombfield_x);
		var bomby = field_to_y(bombfield_y);
		last_dropped_bomb = instance_create_layer(bombx, bomby, "Solids", obj_bomb);
	}
}