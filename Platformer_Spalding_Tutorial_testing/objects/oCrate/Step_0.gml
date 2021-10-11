/// @desc crates fall
//Vertical collision

vsp = vsp + grv

//Vertical collision
if (place_meeting(x,y+vsp,oCrate) or (place_meeting(x,y+vsp,oWall)))
{
	while (!place_meeting(x,y+sign(vsp),oCrate) && !place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//if (place_meeting(x,y+vsp,oWall))
//{
//	while (!place_meeting(x,y+sign(vsp),oWall))
//	{
//		y = y + sign(vsp);
//	}
//	vsp = 0;
//}
//y = y + vsp;