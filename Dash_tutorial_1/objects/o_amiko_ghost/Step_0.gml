/// @description fade out
image_alpha -= .05;

if(image_alpha <= 0)
{
	instance_destroy();
}

if image_index >= image_number -1
{
	image_speed = 0;
}