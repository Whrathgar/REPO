/// @description Insert description here
// You can write your code in this editor

image_xscale = -1
x -= spd;
shoot_timer --
if shoot_timer <= 0
{
	instance_create_layer(x,y,"Instances",oBullet_E_1);
	shoot_timer = random_range(30,90);
}

//Create engine trail
with (instance_create_layer(x+35,y+random_range(-2,2),"Enemies",oAfterBurner_E1))
{
	vsp = 0
}
