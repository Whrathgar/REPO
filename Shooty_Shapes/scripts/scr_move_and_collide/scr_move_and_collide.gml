///@arg xspeed
///@arg yspeed
var xspeed = argument0;
var yspeed = argument1;


if not place_meeting(x+xspeed, y, o_obstacle_parent)
{
	x += xspeed;
}

if not place_meeting(x, y+yspeed, o_obstacle_parent)
{
	y += yspeed;
}


