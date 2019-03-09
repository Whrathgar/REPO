/// @description Initialize Variables
randomize()
sprite_index = choose(s_enemy_circle, s_enemy_diamond,s_enemy_square);
hp = 15;
max_hp = hp;
move_speed = .25;
up = -1
down = 1;
left = -1;
right = 1;
h_dir = choose(left,right, left+right);
v_dir = choose(up,down, down+up);
state = "patrol";
bullet_speed = 5;
