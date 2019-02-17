//Place bow on sprite
x=o_player.x;
y=o_player.y+10;

//Aim bow
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Shoot Bow
firingdelay = firingdelay - 1;
recoil = max(0,recoil-1);
if (mouse_check_button(mb_left)) && (firingdelay<0)
{
	recoil = 4;
	firingdelay = 5;
	scr_screenshake(2,10);
	//audio_sound_pitch(snShoot2,choose(.8,1,1.2));
	//audio_play_sound(snShoot2,3,false);
	with (instance_create_layer(x,y,"Weapons",o_arrow))
	{
		speed = 20;
		direction = other.image_angle + random_range(-3,3)
		image_angle = direction
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1
}
