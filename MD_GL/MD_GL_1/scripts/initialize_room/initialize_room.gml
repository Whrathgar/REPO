///@description Initialize our room
randomize();


grid_size = 32; // size of blocks in the game
x_sections = 4; // How many rooms on x-axis
y_sections = 4; //How many rooms on y-axis
sections = []; // Declare our room's array

section_tiles_x = 15; // how many grid spaces wide our section is
section_tiles_y = 12; // how many grid spaces high our section is

section_width = section_tiles_x * grid_size; // Width of section in pixels
section_height = section_tiles_y * grid_size;// Height of 1 section in pixels

room_width = (section_width * x_sections) + (grid_size * 2);
room_height = (section_height * y_sections) + (grid_size * 2);

for (_y = 0; _y < y_sections; _y++)
 for (_x = 0; _x < x_sections; _x++)
	sections[_x, _y] = 0;


// Create Main Path
create_main_path();

for (_y = 0; _y < y_sections; _y++)
	show_debug_message(string(sections[0,_y]) + string(sections[1,_y]) + string(sections[2,_y]) + string(sections[3,_y]));

// Initializing our sections (loading sections as strings into memory)
initialize_all_sections();

// Create our level
generate_level();



// Clean our memory (De-Initialize our sections)
ds_list_destroy(section_lbr_list);
ds_list_destroy(section_lr_list);
ds_list_destroy(section_ltr_list);

