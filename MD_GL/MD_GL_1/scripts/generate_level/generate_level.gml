


// Generate border for room!
for (_i = 0; _i < room_width; _i += grid_size)
{
	instance_create_layer(_i, 0, "Instances", o_block_perm);
	instance_create_layer(_i, room_height - grid_size, "Instances", o_block_perm);
}

for (_i = grid_size; _i < room_height - grid_size; _i += grid_size)
{
	instance_create_layer(0, _i, "Instances", o_block_perm);
	instance_create_layer(room_width - grid_size, _i, "Instances", o_block_perm);
}

var section_string_data = "";

for (_y = 0; _y < y_sections; _y++)
{
	for (_x = 0; _x < x_sections; _x++)
	{
		section_string_data = load_random_section(sections[_x, _y]);
		
		create_section_from_string(_x, _y, section_string_data);
	}
}	