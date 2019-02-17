/// @get input
right = (keyboard_check(vk_right) or keyboard_check(ord("D")));
left = (keyboard_check(vk_left) or keyboard_check(ord("A")));
up = (keyboard_check(vk_up) or keyboard_check(ord("W")));
down = (keyboard_check(vk_down) or keyboard_check(ord("S")));


right_down = (right and down);
right_up = (right and up);
left_down = (left and down);
left_up = (left and up);

diagonal = (right_down or right_up or left_down or left_up);


right_stop = (keyboard_check_released(vk_right) or keyboard_check_released(ord("D")));
left_stop = (keyboard_check_released(vk_left) or keyboard_check_released(ord("A")));
up_stop = (keyboard_check_released(vk_up) or keyboard_check_released(ord("W")));
down_stop = (keyboard_check_released(vk_down) or keyboard_check_released(ord("S")));


roll = keyboard_check_pressed(vk_space);
attack = keyboard_check_pressed(vk_lcontrol);