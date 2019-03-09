switch (self.sprite_index)
{
	case s_enemy_circle:
	instance_destroy(other);
	instance_destroy();
	break;
	
	case s_enemy_diamond:
	instance_destroy(other);
	self.sprite_index = s_enemy_circle;
	break;
	
	case s_enemy_square:
	instance_destroy(other);
	self.sprite_index = s_enemy_circle;
	break;
}


//if sprite_get_name(o_enemy_basic.sprite_index) == "s_enemy_circle"
//{
//instance_destroy(other);
//instance_destroy();
//}


//if !sprite_get_name(o_enemy_basic.sprite_index) == "s_enemy_circle"
//{
//	instance_destroy(other);
//	o_enemy_basic.sprite_index = s_enemy_circle;
//}
