/// @description Update camera

// Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
}

// Update object position
	x += (xTo - x) / 15;
	y += (yTo - y) / 15;



// Keep camera center inside room
x = clamp(x,view_w_half + buff,room_width - view_w_half - buff);
y = clamp(y,view_h_half + buff,room_height - view_h_half - buff);

// Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1/shake_length) * shake_magnitude));

// Update camera View (Parallax Scroll)
camera_set_view_pos(cam,x - view_w_half,y - view_h_half)
camera_set_view_angle(cam,180)


if (layer_exists("Mountains_2"))
{
	layer_x("Mountains_2",x * .9)
}

if (layer_exists("Mountains"))
{
	layer_x("Mountains",x * .75)
}

if (layer_exists("Trees"))
{
	layer_x("Trees",x * .10)
}