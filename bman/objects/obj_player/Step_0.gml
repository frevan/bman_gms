// execute movement
script_execute(scr_moveplayer);

// drop bomb
script_execute(scr_dropbomb);

// kick
script_execute(scr_kickbomb);


// end game on escape (should be last line)
if (keyboard_check_pressed(vk_escape))	game_end();