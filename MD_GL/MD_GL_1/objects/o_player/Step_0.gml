/// @description States
switch (state)
{
	case "move":
		#region Move State
		if !input.diagonal
		{
			
			if input.right
			{
				move_and_collide(run_speed,0);
				sprite_index = s_player_right;
				image_xscale = 1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 0;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
				dir = 0;
				
			}

			if input.right_stop
			{
				sprite_index = s_player_right;
				image_index = 1
				image_xscale = 1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 0;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}

			if input.left 
			{
				move_and_collide(-run_speed,0)
				sprite_index = s_player_right;
				image_xscale = -1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y + 10,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 180;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
				dir = 180;
			}

			if input.left_stop
			{
				sprite_index = s_player_right;
				image_index = 1
				image_xscale = -1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y + 10,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 180;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}

			if input.up 
			{
				move_and_collide(0,-run_speed)
				sprite_index = s_player_back;
				image_xscale = 1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 90;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
				dir = 90;
			}
		
			if input.up_stop
			{
				sprite_index = s_player_back;
				image_index = 1
				image_xscale = 1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 90;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}
		
			if input.down 
			{
				move_and_collide(0,run_speed)
				sprite_index = s_player_front;
				image_xscale = 1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 270;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
				dir = 270;
			}
		
			if input.down_stop
			{
				sprite_index = s_player_front;
				image_index = 1
				image_xscale = 1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 270;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}
		}
		else
		{
			if input.right
			{
				move_and_collide(d_run_speed,0);
				sprite_index = s_player_right;
				image_xscale = 1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 0;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}

			if input.right_stop
			{
				sprite_index = s_player_right;
				image_index = 1
				image_xscale = 1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 0;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}

			if input.left 
			{
				move_and_collide(-d_run_speed,0)
				sprite_index = s_player_right;
				image_xscale = -1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y + 10,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 180;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}

			if input.left_stop
			{
				sprite_index = s_player_right;
				image_index = 1
				image_xscale = -1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y + 10,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 180;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}

			if input.up 
			{
				move_and_collide(0,-d_run_speed)
				sprite_index = s_player_back;
				image_xscale = 1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 90;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}
		
			if input.up_stop
			{
				sprite_index = s_player_back;
				image_index = 1
				image_xscale = 1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 90;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}
		
			if input.down 
			{
				move_and_collide(0,d_run_speed)
				sprite_index = s_player_front;
				image_xscale = 1;
				image_speed = 0.7;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 270;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}
		
			if input.down_stop
			{
				sprite_index = s_player_front;
				image_index = 1
				image_xscale = 1;
				image_speed = 0;
				instance_destroy(o_sword_passive);
				instance_create_layer(x,y,"Weapons",o_sword_passive);
				o_sword_passive.image_angle = 270;
				o_sword_passive.image_speed = 0;
				o_sword_passive.image_index = 0;
			}
			
			if input.right_up
			{
				dir = 45;
			}
			
			if input.left_up
			{
				dir = 135;
			}
			
			if input.left_down
			{
				dir = 225;
			}
			
			if input.right_down
			{
				dir = 315
			}
		}
	
	
		if  input.dash //keyboard_check_pressed(vk_space)
		{
			state = "dash";
		}
		
		if input.attack //keyboard_check_pressed(vk_lcontrol)
		{
			state = "attack_one";
		}
		
		#endregion
		break;


	case "dash":
		
		#region Dash State
		scr_dash();
		
		//if (dir == 90 or dir == 0 or dir == 180 or dir == 270)
		//{
		//	h_dash = lengthdir_x(dash_speed,dir);
		//	v_dash = lengthdir_y(dash_speed,dir);
			
		//	if not place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm)
		//		{
		//			x += h_dash;
		//		}
		//	if (not place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm))
		//	{
		//		y += v_dash;
		//	}
			
		//	alarm[0] = room_speed/10;
		//}
		
		//if (dir == 45 or dir == 135 or dir == 225 or dir == 315)
		//{
		//	h_dash = lengthdir_x(d_dash_speed,dir);
		//	v_dash = lengthdir_y(d_dash_speed,dir);
			
		//	if not place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm)
		//		{
		//			x += h_dash;
		//		}
		//	if (not place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm))
		//		{
		//			y += v_dash;
		//		}
			
		//	alarm[0] = room_speed/10;
		//}
		
		
		#endregion
		break;

	case "attack_one":
		#region Attack One State
		
			
		if !instance_exists(o_sword_dmg)
		{
						
			instance_create_layer(o_sword_passive.x, o_sword_passive.y, "Weapons", o_sword_dmg);
			o_sword_dmg.image_angle= o_sword_passive.image_angle;
			//o_sword_dmg.image_yscale = o_sword_passive.image_yscale;
			//o_sword_dmg.image_speed = .75;
			instance_create_layer(o_sword_dmg.x, o_sword_dmg.y, "Weapons", o_hitbox);
			o_hitbox.image_angle = o_sword_dmg.image_angle;
			//o_hitbox.image_yscale = o_sword_dmg.image_yscale;
			instance_destroy(o_sword_passive);
		}	
		#endregion
		break;


	
}

