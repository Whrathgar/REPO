/// @description Insert description here
// You can write your code in this editor
randomize();
image_xscale = -1
x -= spd;
y = ystart +sin(get_timer()/dip_)*dip_modifier;
shoot_timer --
if shoot_timer <= 0 && instance_exists(oPlayer) && point_direction(x,y,oPlayer.x,oPlayer.y) > 90 && point_direction(x,y,oPlayer.x,oPlayer.y) < 270
{
	//instance_create_layer(x,y,"Instances",oBullet_E_1);
	audio_sound_pitch(sndGun_1,choose(.8,1,1.2));
	audio_play_sound(sndGun_1,1,false);
	with (instance_create_layer(x,y,"Instances",oBullet_E_1))
	{
	direction = point_direction(other.x,other.y,oPlayer.x,oPlayer.y);
	image_angle = direction;
	}
		
	shoot_timer = random_range(30,90);
}

//Create engine trail
with (instance_create_layer(x+35,y+random_range(-2,2),"Enemies",oAfterBurner_E1))
{
	vsp = 0
}
