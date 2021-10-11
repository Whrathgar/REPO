x+= lengthdir_x(spd,direction);
y+= lengthdir_y(spd,direction);

/// Bullet hits crate
if(place_meeting(x,y,oCrate)) //&& (image_index !=0)
{
	with (instance_place(x,y,oCrate))
	{
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	//while (place_meeting(x,y,oCrate))
	//{
	//x-= lengthdir_x(.1,direction);
	//y-= lengthdir_y(.1,direction);
	//}
	spd = 0
	instance_change(oHitSpark,true);
}

/// Bullet hits enemy
if(place_meeting(x,y,oEnemy)) //&& (image_index !=0)
{
	with (instance_place(x,y,oEnemy))
	{
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	//while (place_meeting(x,y,oEnemy))
	//{
	//x-= lengthdir_x(.1,direction);
	//y-= lengthdir_y(.1,direction);
	//}
	spd = 0
	instance_change(oHitSpark,true);
}

/// Bullet hits wall
if(place_meeting(x,y,oWall)) //&& (image_index !=0)
{
	//while (place_meeting(x,y,oWall))
	//{
	//	x -= lengthdir_x(1,direction);
	//	y -= lengthdir_y(1,direction);
	//}
	spd = 0
	instance_change(oHitSpark,true);
}