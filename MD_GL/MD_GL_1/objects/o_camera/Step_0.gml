if !instance_exists(follow) exit;

// update destination
if(follow != noone)
{
	x_move = follow.x;
	y_move = follow.y;
}

//tween movement smoothly
x += (x_move - x) / 25;
y += (y_move - y) / 25;

//tween zoom smoothly
zoom += (move_zoom - zoom) * zoom_spd;

//zooming
camera_set_view_size(global.camera,original_width * zoom, original_height * zoom);

view_w_half = camera_get_view_width(global.camera) * .5;
view_h_half = camera_get_view_height(global.camera) * .5;

//keep camera from leaving the room
x = clamp(x,view_w_half, room_width - view_w_half);
y = clamp(y,view_h_half, room_width - view_h_half);

//update the camera position
camera_set_view_pos(global.camera, x-view_w_half, y - view_h_half);
