if (keyboard_check(KEY_DROPBOMB))
{
	instance_create_layer(x, y, "Instances_Player", obj_bomb);
	// todo: drop bomb
	// note: how to move away from it?
}