/// @description Initialize Variables
randomize()
sprite_index = choose(s_mr_circle, s_mr_diamond,s_mr_square);
state = "move";
run_speed = 5;
d_run_speed = .8*(run_speed);

firingdelay = 0;

//Dependenceies
input = instance_create_layer(0,0,"Instances",o_input);
//create crosshair
instance_create_layer(0,0,"Player",o_crosshair);
instance_create_layer(0,0,"Player",o_aiming);
//if !instance_exists(o_camera)
//{
//	instance_create_layer(o_player.x,o_player.y,"Instances",o_camera);
//}