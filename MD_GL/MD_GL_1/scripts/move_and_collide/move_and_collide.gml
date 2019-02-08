///@arg xspeed
///@arg yspeed
var xspeed = argument0;
var yspeed = argument1;


if not place_meeting(x+xspeed, y, o_obstacle)
{
	x += xspeed;
}

if not place_meeting(x, y+yspeed, o_obstacle)
{
	y += yspeed;
}

//if not place_meeting(x+xspeed, y, o_block_perm)
//{
//	x += xspeed;
//}

//if not place_meeting(x, y+yspeed, o_block_perm)
//{
//	y += yspeed;
//}

//if not place_meeting(x+xspeed, y, o_water)
//{
//	x += xspeed;
//}

//if not place_meeting(x, y+yspeed, o_water)
//{
//	y += yspeed;
//}