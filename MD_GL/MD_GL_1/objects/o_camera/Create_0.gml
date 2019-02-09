/// @description create a blank camera and assign global variables
global.camera = camera_create_view(0,0,1200,960);
//assign to view
view_set_camera(0,global.camera);

// Initialize variables
follow = o_player;

//for updating location of follows object
x_move = xstart;
y_move = ystart;

//original width and height of camera as set above
original_width = camera_get_view_width(global.camera);
original_height = camera_get_view_height(global.camera);

view_w_half = original_width * .5;
view_h_half = original_height * .5;

zoom = 1; //actual zoom
move_zoom = zoom; //zoom to move to
zoom_spd = .05;

//camera shake, accesed through o_screenshake
shake_x = 0;
shake_y = 0;
