//State
switch(state)
{
	case "patrol":
	
	if (place_meeting(x + move_speed, y, o_block) or place_meeting(x + move_speed, y, o_block_perm))
	{
		h_dir = h_dir * -1;
	}
	
	if (place_meeting(x, y + move_speed, o_block) or place_meeting(x, y + move_speed, o_block_perm))
	{
		v_dir = v_dir * -1;
	}
	
	if (place_meeting(x - move_speed, y, o_block) or place_meeting(x - move_speed, y, o_block_perm))
	{
		h_dir = h_dir * -1;
	}
	
	if (place_meeting(x, y - move_speed, o_block) or place_meeting(x, y - move_speed, o_block_perm))
	{
		v_dir = v_dir * -1;
	}
	
	
	enemy_fly_move_and_collide(h_dir * move_speed, v_dir * move_speed);
	if alarm[0] <= 0
	{
		alarm[0] = random_range(90,300);
	}	
}