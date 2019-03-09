/// @description States
switch (state)
{
	case "move":
	#region Move State
	if !input.diagonal
	{
		if input.right
		{
			scr_move_and_collide(run_speed,0);
		}

		if input.left 
		{
			scr_move_and_collide(-run_speed,0);
		}

		if input.up 
		{
			scr_move_and_collide(0,-run_speed);
		}

		if input.down 
		{
			scr_move_and_collide(0,run_speed);
		}
	}
	
	else
	{
		if input.right
		{
			scr_move_and_collide(d_run_speed,0);
		}

		if input.left 
		{
			scr_move_and_collide(-d_run_speed,0);
		}

		if input.up 
		{
			scr_move_and_collide(0,-d_run_speed);
		}

		if input.down 
		{
			scr_move_and_collide(0,d_run_speed);
		}
	}
	
	if  input.dash //keyboard_check_pressed(vk_space)
		{
			state = "dash";
		}
		
	//if input.attack //keyboard_check_pressed(vk_lcontrol)
	//{
	//	state = "attack_one";
	//}
	#endregion
	break;

	case "dash":
	#region Dash State
	//scr_dash();
	#endregion
	break;

}	

if input.attack
{
	if alarm[0] <= 0
	{
		scr_shoot(sprite_get_name(o_player.sprite_index),o_player.x,o_player.y);	
	}
}

