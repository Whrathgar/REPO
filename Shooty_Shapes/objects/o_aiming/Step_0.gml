if instance_exists(o_player)
{
	x=o_player.x;
	y=o_player.y;
	image_angle = point_direction(o_player.x, o_player.y,mouse_x, mouse_y);
}

if !instance_exists(o_player)
{
	instance_destroy();
}