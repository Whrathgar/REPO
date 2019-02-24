
//Dash left, right, up, or down
if (dir == 90 or dir == 0 or dir == 180 or dir == 270)

	{
		h_dash = lengthdir_x(dash_speed,dir);
		v_dash = lengthdir_y(dash_speed,dir);
	if water_dash_x == true
		{
			x += h_dash;
		}
	if water_dash_y == true
		{
			y += v_dash;
		}
	
	
	if water_dash_x == false
		{
		if not place_meeting(x + h_dash, y, o_obstacle) //and not position_meeting(x + (h_dash *dash_frames), y,o_water)//place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm) and not position_meeting(x + (h_dash *dash_frames), y,o_water)
			{
				x += h_dash;
				 //x += h_dash;
			}
		if place_meeting(x + (.5*h_dash), y, o_water) and not place_meeting(x + (h_dash *dash_frames), y,o_water)//place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm) and not position_meeting(x + (h_dash *dash_frames), y,o_water)
			{
				x += h_dash;
				water_dash_x = true;
			}	
		}	
	if water_dash_y == false	
		{
		if not place_meeting(x, y+v_dash, o_obstacle) //and not position_meeting(x, y + (v_dash * dash_frames), o_water)//place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm) and not position_meeting(x, y + (v_dash * dash_frames), o_water)
			{
				y += v_dash;
			}
		if place_meeting(x, y + (.5 * v_dash), o_water) and not place_meeting(x, y + (v_dash * dash_frames), o_water)//place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm) and not position_meeting(x, y + (v_dash * dash_frames), o_water)
			{
				y += v_dash;
				water_dash_y = true; //y += v_dash;	
			}	
		}
		
		if alarm[0] <= 0
		{
			alarm[0] = dash_frames;
		}	
	}


//Dash diagonal NW, NE, SE, or SW
if (dir == 45 or dir == 135 or dir == 225 or dir == 315)
	{
		h_dash = lengthdir_x(d_dash_speed,dir);
		v_dash = lengthdir_y(d_dash_speed,dir);
							
		if not place_meeting(x + h_dash, y, o_obstacle)//place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm) and not position_meeting(x + (h_dash *dash_frames), y,o_water)
			{
				x += h_dash;
			}
		if not place_meeting(x, y+v_dash, o_obstacle)//place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm) and not position_meeting(x, y + (v_dash * dash_frames), o_water)
			{
				y += v_dash;
			}
		if place_meeting(x + h_dash, y, o_water) and not place_meeting(x + (h_dash *dash_frames), y,o_water)//place_meeting(x + h_dash, y, o_block) and not place_meeting(x+ h_dash, y, o_block_perm) and not position_meeting(x + (h_dash *dash_frames), y,o_water)
			{
				x += h_dash * .5 * dash_frames;
			}
		if place_meeting(x, y+v_dash, o_water) and not place_meeting(x, y + (v_dash * dash_frames), o_water)//place_meeting(x, y+v_dash, o_block) and not place_meeting(x, y+v_dash, o_block_perm) and not position_meeting(x, y + (v_dash * dash_frames), o_water)
			{
				y += v_dash* .5 * dash_frames;
			}	
			
		if alarm[0] <= 0
		{
			alarm[0] = dash_frames;
		}
	}
		
	show_debug_message(string(water_dash_x))