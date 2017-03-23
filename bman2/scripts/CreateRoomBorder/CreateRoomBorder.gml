var tempobj = instance_create_layer(-1, -1, "Instances", obj_border_top);
var borderh = tempobj.sprite_height;
instance_destroy(tempobj);

var tempobj = instance_create_layer(-1, -1, "Instances", obj_border_left);
var borderw = tempobj.sprite_width;
instance_destroy(tempobj);


// top row
var curx = global.map_offsetx;
var cury = global.map_offsety - borderh;
for (var i = 0; i < global.map_fieldcountx; i++)
{
	instance_create_layer(curx, cury, "Instances", obj_border_top);
	curx += global.map_fieldw;
}

// bottom row
curx = global.map_offsetx;
cury = global.map_offsety + (global.map_fieldh * global.map_fieldcounty);
for (var i = 0; i < global.map_fieldcountx; i++)
{
	var o = instance_create_layer(curx, cury, "Instances", obj_border_top);
	curx += global.map_fieldw;
}

// left side
curx = global.map_offsetx - borderw;
cury = global.map_offsety;
for (var i = 0; i < global.map_fieldcounty; i++)
{
	var o = instance_create_layer(curx, cury, "Instances", obj_border_left);
	cury += global.map_fieldh;
}

// right side
curx = global.map_offsetx + (global.map_fieldw * global.map_fieldcountx);
cury = global.map_offsety;
for (var i = 0; i < global.map_fieldcounty; i++)
{
	var o = instance_create_layer(curx, cury, "Instances", obj_border_left);
	cury += global.map_fieldh;
}