randomize()
switch (self.sprite_index)
{
	case s_enemy_diamond:
	instance_destroy(other);
	scr_screenshake(10,20);
	repeat(irandom_range(2,7))
	{
		instance_create_layer(self.x,self.y,"Instances",o_enemy_bullet_diamond)
			with(o_enemy_bullet_diamond)
				{
					direction = random(360);
					speed = random_range(.9,1.1) * o_enemy_basic.bullet_speed;
				}
	}
	instance_destroy();
	break;
	
	case s_enemy_circle:
	instance_destroy(other);
	self.sprite_index = s_enemy_diamond;
	break;
	
	case s_enemy_square:
	instance_destroy(other);
	self.sprite_index = s_enemy_diamond;
	break;
}


//if sprite_get_name(o_enemy_basic.sprite_index) == "s_enemy_diamond"
//{
//instance_destroy(other);
//instance_destroy();
//}

//if !sprite_get_name(o_enemy_basic.sprite_index) == "s_enemy_diamond"
//{
//	instance_destroy(other);
//	o_enemy_basic.sprite_index = s_enemy_diamond;
//}