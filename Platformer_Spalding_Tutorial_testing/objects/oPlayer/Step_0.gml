//Get player input

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv

//Calculate Jumping
canjump -= 1;
//if (place_meeting(x,y+1,oWall)) && (key_jump)
if (canjump > 0) && (key_jump)
{
	repeat(5)
	{
		with(instance_create_layer(x,bbox_bottom,"Player",oDust))
		{
			vsp = 0;
		}
	}
	vsp = -7;
	canjump = 0;
}

//Horizontal collision
if (place_meeting(x+hsp,y,oWall) or place_meeting(x+hsp,y,oCrate))
{
	while (!place_meeting(x+sign(hsp),y,oWall) && !place_meeting(x+sign(hsp),y,oCrate))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
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
	sprite_index = sPlayerA;
	image_speed = 0;
	if(sign(vsp)>0) image_index = 1; else image_index = 0;
}
else
{
	canjump = 10;
	if(sprite_index == sPlayerA) 
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);
		repeat(5)
		{
			with(instance_create_layer(x,bbox_bottom,"Player",oDust))
			{
				vsp = 0;
			}
		}
	
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);



