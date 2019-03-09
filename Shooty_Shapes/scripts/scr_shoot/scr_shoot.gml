///@arg current_player_sprite
///@arg player_x
///@arg player_y

var current_player_sprite = argument0
var player_x = argument1
var player_y = argument2

if current_player_sprite = "s_mr_square"
{
	scr_screenshake(1,5);
	with (instance_create_layer(player_x,player_y,"Instances",o_player_bullet_square))
	{
		speed = 10;
		direction = point_direction(player_x,player_y,mouse_x + random_range(-3,3), mouse_y + random_range(-3,3))
	}
	alarm[0] = 20;
}

if current_player_sprite = "s_mr_circle"
{
	scr_screenshake(1,5);
	with (instance_create_layer(player_x,player_y,"Instances",o_player_bullet_circle))
	{
		speed = 10;
		direction = point_direction(player_x,player_y,mouse_x + random_range(-3,3), mouse_y + random_range(-3,3))
	}
	alarm[0] = 20;
}

if current_player_sprite = "s_mr_diamond"
{
	scr_screenshake(1,5);
	with (instance_create_layer(player_x,player_y,"Instances",o_player_bullet_diamond))
	{
		speed = 10;
		direction = point_direction(player_x,player_y,mouse_x + random_range(-3,3), mouse_y + random_range(-3,3))
	}
	alarm[0] = 20;
}
