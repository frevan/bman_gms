// init map and field constants
global.NUM_PLAYERS = 1;
global.map_spawnx[0] = 1;
global.map_spawny[0] = 1;

global.map_fieldcountx = 15;
global.map_fieldcounty = 11;
global.map_offsetx = 160;
global.map_offsety = 64;
global.map_fieldw = 64;
global.map_fieldh = 64;

// other constants
global.NORMAL_SPEED = 10;

// create objects
CreateRoomBorder();
InitializeRoomObjects();