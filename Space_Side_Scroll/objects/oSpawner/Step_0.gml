randomize();
spn_time --
if dir == "down"
{
	y += 25;
	if y > room_height - 25
	{
		dir = "up";
	}
}

if dir == "up"
{
	y -= 25;
	if y < 0 + 25
	{
		dir = "down";
	}	
}
var en_1 = oEnemy_1;
var en_2 = oEnemy_2;
if spn_time <= 0
{
	instance_create_layer(x,y,"Enemies",choose(en_1,en_2));
	spn_time = random_range(30,60);
}
show_debug_message(y);