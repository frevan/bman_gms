// borders
for (var i = 0; i < global.level_size_x; i++)
{
	var fx = field_to_x(i);
	instance_create_layer(fx, global.field_top-global.BORDER_SIZE, "Borders", obj_border);
	instance_create_layer(fx, global.field_bottom, "Borders", obj_border);
}
for (var j = 0; j < global.level_size_y; j++)
{
	var fy = field_to_y(j);
	instance_create_layer(global.field_left-global.BORDER_SIZE, fy, "Borders", obj_borderside);
	instance_create_layer(global.field_right, fy, "Borders", obj_borderside);
}
instance_create_layer(global.field_left-global.BORDER_SIZE, global.field_top-global.BORDER_SIZE, "Borders", obj_corner);
instance_create_layer(global.field_left-global.BORDER_SIZE, global.field_bottom, "Borders", obj_corner);
instance_create_layer(global.field_right, global.field_top-global.BORDER_SIZE, "Borders", obj_corner);
instance_create_layer(global.field_right, global.field_bottom, "Borders", obj_corner);

// objects according to array
for (var i = 0; i < global.level_size_x; i++)
	for (var j = 0; j < global.level_size_y; j++)
	{
		var fx = field_to_x(i);
		var fy = field_to_y(j);
		
		var obj = obj_field;
		instance_create_layer(fx, fy, "FieldTiles", obj);
		
		if (global.field_array[i, j] == global.FIELD_BRICK)			obj = obj_brick;
		else if (global.field_array[i, j] == global.FIELD_SOLID)	obj = obj_solid;
		else if (global.field_array[i, j] == global.FIELD_BOMB)		obj = obj_bomb;
		if (obj != obj_field)
			instance_create_layer(fx, fy, "Solids", obj);
	}
