spn_time --
if dir == "down"
{
	y += 5;
	if y > room_height
	{
		dir = "up";
	}
}

if dir == "up"
{
	y -= 5;
	if y < 0
	{
		dir = "down";
	}	
}

if spn_time <= 0
{
	instance_create_layer(x,y,"Enemies",oEnemy_1);
	spn_time = random_range(30,90);
}
show_debug_message(y);