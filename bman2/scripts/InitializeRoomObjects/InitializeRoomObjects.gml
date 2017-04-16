// create player(s)
var px = FieldToX(global.map_spawnx[0]);
var py = FieldToY(global.map_spawny[0]);
global.Players[0] = instance_create_layer(px, py, "Players", obj_player);
// not yet
global.Players[1] = pointer_null;
global.Players[2] = pointer_null; 
global.Players[3] = pointer_null;
global.Players[4] = pointer_null;
global.Players[5] = pointer_null;
global.Players[6] = pointer_null;
global.Players[7] = pointer_null;