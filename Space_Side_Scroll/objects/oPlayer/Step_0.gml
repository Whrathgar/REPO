/// @desc Step
if(hp <= 0)
	{
		instance_destroy();
	}

if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_down = 0;
	key_up = 0;
}

//calculate movement
var hmove = key_right - (1.1 * key_left);
var vmove = key_down - key_up;

hsp = hmove * flyspd;
vsp = vmove * flyspd;

x = x + hsp;
y = y + vsp;

//draw_self();

if (flash > 0)
{
	flash--;
	shader_set(shWhite);
	//draw_self();
	shader_reset();
}

firingdelay = firingdelay - 1;
if keyboard_check(vk_space) && firingdelay <=0
{
	instance_create_layer(x,y,"Bullets",oBullet_1);
	firingdelay = 5;
}