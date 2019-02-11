/// @description States
switch (state)
{
	case "move":
		if input.right
		{
			move_and_collide(run_speed,0);
			sprite_index = s_player_right;
			image_xscale = 1;
			image_speed = 0.7;
		}

		if input.right_stop
		{
			sprite_index = s_player_right;
			image_index = 1
			image_xscale = 1;
			image_speed = 0;
		}

		if input.left 
		{
			move_and_collide(-run_speed,0)
			sprite_index = s_player_right;
			image_xscale = -1;
			image_speed = 0.7;
		}

		if input.left_stop
		{
			sprite_index = s_player_right;
			image_index = 1
			image_xscale = -1;
			image_speed = 0;
		}

		if input.up 
		{
			move_and_collide(0,-run_speed)
			sprite_index = s_player_back;
			image_xscale = 1;
			image_speed = 0.7;	
		}
		
		if input.up_stop
		{
			sprite_index = s_player_back;
			image_index = 1
			image_xscale = 1;
			image_speed = 0;
		}
		
		if input.down 
		{
			move_and_collide(0,run_speed)
			sprite_index = s_player_front;
			image_xscale = 1;
			image_speed = 0.7;
		}
		
		if input.down_stop
		{
			sprite_index = s_player_front;
			image_index = 1
			image_xscale = 1;
			image_speed = 0;
		}
}

