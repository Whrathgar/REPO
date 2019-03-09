/// @description States
//State
switch(state)
{
	case "patrol":
	
	if place_meeting(x + move_speed, y, o_obstacle_parent)
	{
		h_dir = h_dir * -1;
	}
	
	if place_meeting(x, y + move_speed, o_obstacle_parent) 
	{
		v_dir = v_dir * -1;
	}
	
	if place_meeting(x - move_speed, y, o_obstacle_parent) 
	{
		h_dir = h_dir * -1;
	}
	
	if place_meeting(x, y - move_speed, o_obstacle_parent) 
	{
		v_dir = v_dir * -1;
	}
	
	scr_move_and_collide(h_dir * move_speed, v_dir * move_speed);
	if alarm[0] <= 0
	{
		alarm[0] = random_range(90,300);
	}
}

	if alarm[1] <= 0
	{
		alarm [1] = random_range(90,300);
	}