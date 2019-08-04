/// @desc die
randomize();
if hp <= 0
{
	with (instance_create_layer(x + random_range(-2,2),y + random_range(-2,2), "Enemies",oExplosion))
	{
		image_angle = random_range(0,360);
	}
	with (instance_create_layer(x + random_range(-2,2),y + random_range(-2,2), "Enemies",oExplosion))
	{
		image_angle = random_range(0,360);
	}
	with (instance_create_layer(x + random_range(-2,2),y + random_range(-2,2), "Enemies",oExplosion))
	{
		image_angle = random_range(0,360);
	}
	instance_destroy();
}

if (x < -100) or (x > room_width + 100)
{
	instance_destroy();
}
if (y < -100) or (y > room_height + 100)
{
	instance_destroy();
}