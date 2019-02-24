event_inherited();
///@set variables
sprite_index = s_player_front;
image_speed = 0;
state = "move";
run_speed = 4;
d_run_speed = sqrt(2*run_speed);
roll_speed = 3.5;
dash_multiplyer = 2;
dash_speed = dash_multiplyer * run_speed;
d_dash_speed = dash_multiplyer * d_run_speed
dash_frames = 8//(room_speed/6)
water_dash_x = false;
water_dash_y = false;


dir = 0;

//hold bow
//instance_create_layer(0,0,"Weapons",o_bow);

//hold sword
instance_create_layer(0,0,"Weapons",o_sword_passive);

//Dependenceies
input = instance_create_layer(0,0,"Instances",o_input);