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