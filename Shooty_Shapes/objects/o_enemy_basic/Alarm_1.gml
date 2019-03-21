/// @description Shoot Correct Shape at player
if instance_exists(o_player) and collision_line(self.x,self.y,o_player.x,o_player.y,o_wall,false,true) == noone
	{
	switch (self.sprite_index)
	{
		case s_enemy_circle:
			//scr_screenshake(1,5);
			with (instance_create_layer(x,y,"Instances",o_enemy_bullet_circle))
			{
				speed = random_range(.90,1.1)*o_enemy_basic.bullet_speed;
				direction = point_direction(x,y,o_player.x + random_range(-3,3), o_player.y + random_range(-3,3))
			}
			//alarm[1] = 20;
		break;
	
		case s_enemy_diamond:
			//scr_screenshake(1,5);
			with (instance_create_layer(x,y,"Instances",o_enemy_bullet_diamond))
			{
				speed = random_range(.90,1.1)*o_enemy_basic.bullet_speed;
				direction = point_direction(x,y,o_player.x + random_range(-3,3), o_player.y + random_range(-3,3))
			}
		break;
	
		case s_enemy_square:
			//scr_screenshake(1,5);
			with (instance_create_layer(x,y,"Instances",o_enemy_bullet_square))
			{
				speed = random_range(.90,1.1)* o_enemy_basic.bullet_speed;
				direction = point_direction(x,y,o_player.x + random_range(-3,3), o_player.y + random_range(-3,3))
			}
		break;
	}
}