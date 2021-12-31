#region HELD
if(gamepad_button_check(0, gp_padu)) ||
(keyboard_check(vk_up)) ||
(keyboard_check(ord("W"))){
	global.HELD_U = true;
}else{
	global.HELD_U = false;
}

if(gamepad_button_check(0, gp_padd)) ||
(keyboard_check(vk_down)) ||
(keyboard_check(ord("S"))){
	global.HELD_D = true;
}else{
	global.HELD_S = false;
}

if(gamepad_button_check(0, gp_padl)) ||
(keyboard_check(vk_left)) ||
(keyboard_check(ord("A"))){
	global.HELD_L = true;
}else{
	global.HELD_L = false;
}

if(gamepad_button_check(0, gp_padr)) ||
(keyboard_check(vk_right)) ||
(keyboard_check(ord("D"))){
	global.HELD_R = true;
}else{
	global.HELD_R = false;
}

#endregion
