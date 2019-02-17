event_inherited();
///@set variables
sprite_index = s_player_front;
image_speed = 0;
state = "move";
run_speed = 4;
d_run_speed = sqrt(2*run_speed);
roll_speed = 3.5

//Dependenceies
input = instance_create_layer(0,0,"Instances",o_input);