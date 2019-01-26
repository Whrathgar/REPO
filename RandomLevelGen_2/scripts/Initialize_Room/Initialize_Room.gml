///@description Initialize our room
randomize();


grid_size = 32; // size of blocks in the game
x_rooms = 4; // How many rooms on x-axis
y_rooms; //How many rooms on y-axis
rooms = []; // Declare our room's array

section_tiles_x = 10; // how many grid spaces wide our section is
section_tiles_y = 8; // how many grid spaces high our section is

section_width = section_tiles_x * grid_size; // Width of section in pixels
section_height = section_tiles_y * grid_size;// Height of 1 section in pixels

room_width = (section_width * x_rooms) + (grid_size * 2);
room_height = (section_height * y_rooms) + (grid_size * 2);

