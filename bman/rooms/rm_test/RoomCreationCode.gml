// field types
global.FIELD_NONE		= 0;
global.FIELD_BRICK		= 1;
global.FIELD_SOLID		= 2;
global.FIELD_BOMB		= 3;
global.FIELD_POWERUP	= 4;

// level properties
global.level_size_x = 15;
global.level_size_y = 11;
// field dimensions
global.field_x = 15;
global.field_y = 55;
global.field_w = 48;
global.field_h = 45;
global.field_w2 = global.field_w/2;
global.field_h2 = global.field_h/2;
global.BORDER_SIZE = 25;

// useful values
global.field_left = global.field_x + global.BORDER_SIZE;
global.field_right = global.field_left + global.level_size_x * global.field_w;
global.field_top = global.field_y + global.BORDER_SIZE;
global.field_bottom = global.field_top + global.level_size_y * global.field_h;

// player position
spawn_field[0,0] = 11;
spawn_field[0,1] = 1;

// create the field data structure and objects
init_test_field_array();
create_test_field_objects();

// spawn players
playerx = field_to_x(spawn_field[0,0]);
playery = field_to_y(spawn_field[0,1]);
player_instances[0] = instance_create_layer(playerx, playery, "Player", obj_player);

room_speed = 30;