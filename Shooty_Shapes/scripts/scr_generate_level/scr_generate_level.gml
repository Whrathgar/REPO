// Generate border for room!
for (_i = 0; _i < room_width; _i += grid_size)
{
	instance_create_layer(_i + (.5 * grid_size), (.5 * grid_size), "Instances", o_wall);
	instance_create_layer(_i + (.5 * grid_size), room_height - (.5 * grid_size), "Instances", o_wall);
}

for (_i = grid_size; _i < room_height - grid_size; _i += grid_size)
{
	instance_create_layer((.5 * grid_size), _i + (.5 * grid_size), "Instances", o_wall);
	instance_create_layer(room_width - (.5 * grid_size), _i + (.5 * grid_size), "Instances", o_wall);
}

var section_string_data = "";

for (_y = 0; _y < y_sections; _y++)
{
	for (_x = 0; _x < x_sections; _x++)
	{
		section_string_data = scr_load_random_section(sections[_x, _y]);
		
		scr_create_section_from_string(_x, _y, section_string_data);
	}
}	