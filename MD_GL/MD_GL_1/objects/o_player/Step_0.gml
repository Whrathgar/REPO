/// @description States
switch (state)
{
	case "move":
		if input.right
		{
			move_and_collide(run_speed,0);
			sprite_index = s_player;
			image_xscale = 1;
			image_speed = 0.7;
		}

		if input.left 
		{
			move_and_collide(-run_speed,0)
			sprite_index = s_player;
			image_xscale = -1;
			image_speed = 0.7;
		}

		if input.up 
		{
			move_and_collide(0,-run_speed)
			sprite_index = s_player;
			image_xscale = -1;
			image_speed = 0.7;
		}
		
		if input.down 
		{
			move_and_collide(0,run_speed)
			sprite_index = s_player;
			image_xscale = 1;
			image_speed = 0.7;
		}
}

