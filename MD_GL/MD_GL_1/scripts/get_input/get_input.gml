/// @get input
right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
left = (keyboard_check(vk_left) or keyboard_check(ord("A")));
up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
down = (keyboard_check(vk_down) or keyboard_check(ord("S")));

roll = keyboard_check_pressed(vk_space);
attack = keyboard_check_pressed(vk_lcontrol);