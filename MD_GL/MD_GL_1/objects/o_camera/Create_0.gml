/// @description Set up camera
//view_camera[0] = camera_create_view(0, 0, room_width * .5, room_height * .5);
cam = view_camera[0];
follow = o_player;
view_w_half = camera_get_view_width(cam) * .25;
view_h_half = camera_get_view_height(cam) * .25;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;
