if (keyboard_check(KEY_DROPBOMB))
{
	bombx = x_to_fieldx(x);
	bomby = y_to_fieldy(y);

	instance_create_layer(bombx, bomby, "Instances_Player", obj_bomb);
	// todo: drop bomb
	// note: how to move away from it?
}