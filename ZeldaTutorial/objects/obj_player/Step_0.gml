/// @description movement
image_speed=0;
var _animation_speed = 0.6;

if keyboard_check(vk_right)
&& !place_meeting(x+speed_, y, obj_solid)
{
    x += speed_;
    sprite_index=spr_player_run_right;
    image_speed=_animation_speed;
    image_xscale=1;
}

if keyboard_check(vk_left)
&& !place_meeting(x-speed_, y, obj_solid)
{
    x -= speed_;
    sprite_index=spr_player_run_right;
    image_speed=_animation_speed;
    image_xscale=-1;
}

if keyboard_check(vk_down)
&& !place_meeting(x, y+speed_,obj_solid)
{
    y += speed_;
    sprite_index=spr_player_run_down;
    image_speed=_animation_speed;
}

if keyboard_check(vk_up)
&& !place_meeting(x, y-speed_,obj_solid)
{
    y -= speed_;
    sprite_index=spr_player_run_up;
    image_speed=_animation_speed;
}

if keyboard_check(ord("D"))
&& !place_meeting(x+speed_, y, obj_solid)
{
    x += speed_;
    sprite_index=spr_player_run_right;
    image_speed=_animation_speed;
    image_xscale=1;
}

if keyboard_check(ord("A"))
&& !place_meeting(x-speed_, y, obj_solid)
{
    x -= speed_;
    sprite_index=spr_player_run_right;
    image_speed=_animation_speed;
    image_xscale=-1;
}

if keyboard_check(ord("S"))
&& !place_meeting(x, y+speed_,obj_solid)
{
    y += speed_;
    sprite_index=spr_player_run_down;
    image_speed=_animation_speed;
}

if keyboard_check(ord("W"))
&& !place_meeting(x, y-speed_,obj_solid)
{
    y -= speed_;
    sprite_index=spr_player_run_up;
    image_speed=_animation_speed;
}

