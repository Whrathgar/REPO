draw_self();



if (flash > 0)
{
	flash--;
	if shader_on == false
	{
	shader_set(shWhite);
	draw_self();
	shader_reset();
	shader_on = true;
	}
	else
	{
	draw_self();
	shader_on = false
	}
}