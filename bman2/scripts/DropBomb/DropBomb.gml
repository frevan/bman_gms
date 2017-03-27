if (keyboard_check(KEY_DROPBOMB))
{
	var bombfield_x = XToField(x);
	var bombfield_y = YToField(y);
	/*
	if (global.field_array[bombfield_x, bombfield_y] != global.FIELD_BOMB)
	{	
		var bombx = field_to_x(bombfield_x);
		var bomby = field_to_y(bombfield_y);
		last_dropped_bomb = instance_create_layer(bombx, bomby, "Solids", obj_bomb);
	}
	*/
	
	var bombx = FieldToX(bombfield_x);
	var bomby = FieldToY(bombfield_y);
	var bomb = instance_create_layer(bombx, bomby, "Solids", obj_bomb);
}
