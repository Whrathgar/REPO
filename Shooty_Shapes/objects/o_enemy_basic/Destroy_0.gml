/// @description Spawn explosion of bullets depending on sprite

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