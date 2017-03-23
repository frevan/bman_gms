// create player(s)
var px = FieldToX(global.map_spawnx[0]);
var py = FieldToY(global.map_spawny[0]);
instance_create_layer(px, py, "Players", obj_player);