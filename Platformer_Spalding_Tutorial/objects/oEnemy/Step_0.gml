//Enemy movement
vsp = vsp + grv

//Don't walk off edges
if(grounded) && (afraidofheights) && (!place_meeting (x+hsp,y+1,oWall)) && (!place_meeting (x+hsp,y+1,oCrate))
{
	hsp = -hsp;
}

//Horizontal collision
if (place_meeting(x+hsp,y,oWall) or place_meeting(x+hsp,y,oCrate))
{
	while (!place_meeting(x+sign(hsp),y,oWall) && !place_meeting(x+sign(hsp),y,oCrate))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall) or place_meeting(x,y+vsp,oCrate))
{
	while (!place_meeting(x,y+sign(vsp),oWall) && !place_meeting(x,y+sign(vsp),oCrate))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,oCrate))
{
	grounded = false;
	sprite_index = sEnemyA;
	image_speed = 0;
	if(sign(vsp)>0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;




