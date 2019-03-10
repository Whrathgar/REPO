switch (self.sprite_index)
{
	case s_mr_diamond:
	instance_destroy(other);
	instance_destroy();
	break;
	
	case s_mr_circle:
	instance_destroy(other);
	self.sprite_index = s_mr_diamond;
	break;
	
	case s_mr_square:
	instance_destroy(other);
	self.sprite_index = s_mr_diamond;
	break;
}