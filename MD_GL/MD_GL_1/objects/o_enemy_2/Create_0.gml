/// @description Initialize Variables
hp = 15;
max_hp = hp;
sprite_index = s_enemy_2_front;
image_index = choose(0, 1, 2);
image_speed = choose (0.4, .45, .5);
move_speed = .25;
up = -1
down = 1;
left = -1;
right = 1;
h_dir = choose(left,right, left+right);
v_dir = choose(up,down, down+up);
state = "patrol"