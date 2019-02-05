grid_size = 32;

x_tiles = room_width / grid_size;
y_tiles = room_height / grid_size;

var level_data = "";

for (_y = 0; _y < y_tiles; _y++)
	for (_x = 0; _x < x_tiles; _x++)
		{
			inst = instance_position(_x * grid_size, _y * grid_size, all);
			
			if (inst != noone)
				inst = inst.object_index;
			
			switch (inst)
			{
				case noone:
					level_data += "0";
					break;
				case o_block:
					level_data += "1";
					break;
				case o_player:
					level_data += "p";
					break;
				case o_water:
					level_data += "w";
					break;
				case o_enemy_1:
					level_data += "e";
					break;
				case o_enemy_2:
					level_data += "f";
					break;
			}
		}
		
save_dir = get_save_filename("*.txt",room_get_name(room) + ".txt");

file = file_text_open_write(save_dir);
file_text_write_string(file, level_data);
file_text_close(file);
