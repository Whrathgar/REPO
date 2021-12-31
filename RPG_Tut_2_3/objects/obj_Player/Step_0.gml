#region Movement
if (disabled == false)
{
	if(global.HELD_L) && (can_move == true)
		{
			target_X = x - 16;
			//sprite_index = spr_player_walk_left;
			can_move = false;
		}
		
		
	if(global.HELD_R) && (can_move == true)
		{
			target_X = x + 16;
			//sprite_index = spr_player_walk_right;
			can_move = false;
		}	
		
	if(global.HELD_U) && (can_move == true)
		{
			target_Y = y - 16;
			//sprite_index = spr_player_walk_up;
			can_move = false;
		}	

	if(global.HELD_D) && (can_move == true)
		{
			target_Y = y + 16;
			//sprite_index = spr_player_walk_down;
			can_move = false;
		}

	if (x != target_X || y != target_Y)
	{
		x += sign(target_X - x) * step_speed;
		y += sign(target_Y - y) * step_speed;
	}
		else
	{
		can_move = true;
		
		// Set stationary Sprites
		//if sprite_index == spr_player_walk_down sprite_index = spr_player_stationary_down;
		//if sprite_index == spr_player_walk_up sprite_index = spr_player_stationary_up;
		//if sprite_index == spr_player_walk_left sprite_index = spr_player_stationary_left;
		//if sprite_index == spr_player_walk_right sprite_index = spr_player_stationary_right;
	}	
	




}
#endregion
