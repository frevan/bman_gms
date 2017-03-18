// some constants (different location for init?)
global.FIELD_NONE		= 0;
global.FIELD_BRICK		= 1;
global.FIELD_SOLID		= 2;
global.FIELD_BOMB		= 3;
global.FIELD_POWERUP	= 4;

// initialize level properties
global.level_size_x = 15;
global.level_size_y = 11;
global.field_x = 0;
global.field_y = 0;
global.field_w = 48;
global.field_h = 45;

global.BORDER_SIZE = 25;

spawn_field[0,0] = 11;
spawn_field[0,1] = 1;

// field array
// init to nothing (background)
for (var i = 0; i < global.level_size_x; i++)
	for (var j = 0; j < global.level_size_y; j++)
		global.field_array[i, j] = global.FIELD_NONE;
// set specific fields
// >>> bricks
global.field_array[6,0] = global.FIELD_BRICK;
global.field_array[6,1] = global.FIELD_BRICK;
global.field_array[6,2] = global.FIELD_BRICK;
global.field_array[6,3] = global.FIELD_BRICK;
global.field_array[6,4] = global.FIELD_BRICK;
global.field_array[6,6] = global.FIELD_BRICK;
global.field_array[6,7] = global.FIELD_BRICK;
global.field_array[6,8] = global.FIELD_BRICK;
global.field_array[6,9] = global.FIELD_BRICK;
global.field_array[6,10] = global.FIELD_BRICK;
global.field_array[7,0] = global.FIELD_BRICK;
global.field_array[7,10] = global.FIELD_BRICK;
global.field_array[8,0] = global.FIELD_BRICK;
global.field_array[8,1] = global.FIELD_BRICK;
global.field_array[8,2] = global.FIELD_BRICK;
global.field_array[8,3] = global.FIELD_BRICK;
global.field_array[8,4] = global.FIELD_BRICK;
global.field_array[8,6] = global.FIELD_BRICK;
global.field_array[8,7] = global.FIELD_BRICK;
global.field_array[8,8] = global.FIELD_BRICK;
global.field_array[8,9] = global.FIELD_BRICK;
global.field_array[8,10] = global.FIELD_BRICK;
global.field_array[0,4] = global.FIELD_BRICK;
global.field_array[1,4] = global.FIELD_BRICK;
global.field_array[2,4] = global.FIELD_BRICK;
global.field_array[3,4] = global.FIELD_BRICK;
global.field_array[4,4] = global.FIELD_BRICK;
global.field_array[5,4] = global.FIELD_BRICK;
global.field_array[6,4] = global.FIELD_BRICK;
global.field_array[8,4] = global.FIELD_BRICK;
global.field_array[9,4] = global.FIELD_BRICK;
global.field_array[10,4] = global.FIELD_BRICK;
global.field_array[11,4] = global.FIELD_BRICK;
global.field_array[12,4] = global.FIELD_BRICK;
global.field_array[13,4] = global.FIELD_BRICK;
global.field_array[14,4] = global.FIELD_BRICK;
global.field_array[0,5] = global.FIELD_BRICK;
global.field_array[14,5] = global.FIELD_BRICK;
global.field_array[0,6] = global.FIELD_BRICK;
global.field_array[1,6] = global.FIELD_BRICK;
global.field_array[2,6] = global.FIELD_BRICK;
global.field_array[3,6] = global.FIELD_BRICK;
global.field_array[4,6] = global.FIELD_BRICK;
global.field_array[5,6] = global.FIELD_BRICK;
global.field_array[6,6] = global.FIELD_BRICK;
global.field_array[8,6] = global.FIELD_BRICK;
global.field_array[9,6] = global.FIELD_BRICK;
global.field_array[10,6] = global.FIELD_BRICK;
global.field_array[11,6] = global.FIELD_BRICK;
global.field_array[12,6] = global.FIELD_BRICK;
global.field_array[13,6] = global.FIELD_BRICK;
global.field_array[14,6] = global.FIELD_BRICK;
// >>> solids
global.field_array[7,1] = global.FIELD_SOLID;
global.field_array[7,2] = global.FIELD_SOLID;
global.field_array[7,3] = global.FIELD_SOLID;
global.field_array[7,4] = global.FIELD_SOLID;
global.field_array[7,5] = global.FIELD_SOLID;
global.field_array[7,6] = global.FIELD_SOLID;
global.field_array[7,7] = global.FIELD_SOLID;
global.field_array[7,8] = global.FIELD_SOLID;
global.field_array[7,9] = global.FIELD_SOLID;
global.field_array[1,5] = global.FIELD_SOLID;
global.field_array[2,5] = global.FIELD_SOLID;
global.field_array[3,5] = global.FIELD_SOLID;
global.field_array[4,5] = global.FIELD_SOLID;
global.field_array[5,5] = global.FIELD_SOLID;
global.field_array[6,5] = global.FIELD_SOLID;
global.field_array[7,5] = global.FIELD_SOLID;
global.field_array[8,5] = global.FIELD_SOLID;
global.field_array[9,5] = global.FIELD_SOLID;
global.field_array[10,5] = global.FIELD_SOLID;
global.field_array[11,5] = global.FIELD_SOLID;
global.field_array[12,5] = global.FIELD_SOLID;
global.field_array[13,5] = global.FIELD_SOLID;
global.field_array[4,1] = global.FIELD_SOLID;
global.field_array[2,2] = global.FIELD_SOLID;
global.field_array[3,2] = global.FIELD_SOLID;
global.field_array[4,2] = global.FIELD_SOLID;
global.field_array[10,1] = global.FIELD_SOLID;
global.field_array[10,2] = global.FIELD_SOLID;
global.field_array[11,2] = global.FIELD_SOLID;
global.field_array[12,2] = global.FIELD_SOLID;
global.field_array[2,8] = global.FIELD_SOLID;
global.field_array[3,8] = global.FIELD_SOLID;
global.field_array[4,8] = global.FIELD_SOLID;
global.field_array[4,9] = global.FIELD_SOLID;
global.field_array[10,8] = global.FIELD_SOLID;
global.field_array[11,8] = global.FIELD_SOLID;
global.field_array[12,8] = global.FIELD_SOLID;
global.field_array[10,9] = global.FIELD_SOLID;

// borders
fieldleft = global.field_x + global.BORDER_SIZE;
fieldright = fieldleft + global.level_size_x * global.field_w;
fieldtop = global.field_y + global.BORDER_SIZE;
fieldbottom = fieldtop + global.level_size_y * global.field_h;
for (var i = 0; i < global.level_size_x; i++)
{
	fx = fieldleft + i*global.field_w;
	instance_create_layer(fx, fieldtop-global.BORDER_SIZE, "Borders", obj_border);
	instance_create_layer(fx, fieldbottom, "Borders", obj_border);
}
for (var j = 0; j < global.level_size_y; j++)
{
	fy = fieldtop + j*global.field_h;
	instance_create_layer(fieldleft-global.BORDER_SIZE, fy, "Borders", obj_borderside);
	instance_create_layer(fieldright, fy, "Borders", obj_borderside);
}
instance_create_layer(fieldleft-global.BORDER_SIZE, fieldtop-global.BORDER_SIZE, "Borders", obj_corner);
instance_create_layer(fieldleft-global.BORDER_SIZE, fieldbottom, "Borders", obj_corner);
instance_create_layer(fieldright, fieldtop-global.BORDER_SIZE, "Borders", obj_corner);
instance_create_layer(fieldright, fieldbottom, "Borders", obj_corner);
// create field objects according to array
offsx = fieldleft;
offsy = fieldtop;
for (var i = 0; i < global.level_size_x; i++)
	for (var j = 0; j < global.level_size_y; j++)
	{
		fx = offsx + (global.field_w/2) + i*global.field_w;
		fy = offsy + (global.field_h/2) + j*global.field_h;
		
		obj = obj_field;
		instance_create_layer(fx, fy, "FieldTiles", obj);
		
		if (global.field_array[i, j] == global.FIELD_BRICK)			obj = obj_brick;
		else if (global.field_array[i, j] == global.FIELD_SOLID)	obj = obj_solid;
		else if (global.field_array[i, j] == global.FIELD_BOMB)		obj = obj_bomb;
		if (obj != obj_field)
			instance_create_layer(fx, fy, "Solids", obj);
	}

// player
playerx = fieldleft + spawn_field[0,0] * global.field_w + global.field_w/2;
playery = fieldtop + spawn_field[0,1] * global.field_h + global.field_h;
player_instances[0] = instance_create_layer(playerx, playery, "Player", obj_player);