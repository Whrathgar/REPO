/// @desc die
if hp <= 0
{
	instance_create_layer(x + random_range(-2,2),y + random_range(-2,2), "Enemies",oExplosion);
	instance_create_layer(x + random_range(-2,2),y + random_range(-2,2), "Enemies",oExplosion);
	instance_create_layer(x + random_range(-2,2),y + random_range(-2,2), "Enemies",oExplosion);
	instance_destroy();
}