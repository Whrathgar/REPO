if (dir == 90 or dir == 0 or dir == 180 or dir == 270)
		{
			h_dash = lengthdir_x(dash_speed,dir);
			v_dash = lengthdir_y(dash_speed,dir);
			
			if not place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm)
				{
					x += h_dash;
				}
			if (not place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm))
			{
				y += v_dash;
			}
			
			
			if alarm[0] <= 0
			{
				alarm[0] = room_speed/6;
			}	
		}
		
		if (dir == 45 or dir == 135 or dir == 225 or dir == 315)
		{
			h_dash = lengthdir_x(d_dash_speed,dir);
			v_dash = lengthdir_y(d_dash_speed,dir);
			
			if not place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm)
				{
					x += h_dash;
				}
			if (not place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm))
				{
					y += v_dash;
				}
			
			if alarm[0] <= 0
			{
				alarm[0] = room_speed/6;
			}
		}