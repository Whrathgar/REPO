var _current_x_section = argument0;
var _current_y_section = argument1;
var _section_string_data = argument2;

for (c = 1; c < string_length(_section_string_data) + 1; c++)
{
	switch (string_char_at(_section_string_data, c))
	{
		case "0":
			break;
		case "1":
			instance_create_layer((_current_x_section * section_width) + (((c - 1) mod section_tiles_x) * grid_size) + grid_size, 
									(_current_y_section * section_height) + (floor ((c - 1) / section_tiles_x) * grid_size) + grid_size,
									"Instances", o_block);
			break;	
		case "p":
			if !instance_exists(o_player)
			{
				instance_create_layer((_current_x_section * section_width) + (((c - 1) mod section_tiles_x) * grid_size) + grid_size, 
										(_current_y_section * section_height) + (floor ((c - 1) / section_tiles_x) * grid_size) + grid_size,
										"Instances", o_player);
			}
			break;
	}
}