/// @desc Step
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
var hmove = key_right - key_left;
var vmove = key_down - key_up;

hsp = hmove * flyspd;
vsp = vmove * flyspd;

x = x + hsp;
y = y + vsp;