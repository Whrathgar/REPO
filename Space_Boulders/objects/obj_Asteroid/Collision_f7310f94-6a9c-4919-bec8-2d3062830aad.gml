action_kill_object();
with (other) {
if(sprite_index==spr_Player)
{
    var randomangle = random(360);
    var o; 
    o=instance_create(x,y,obj_deadplayer_1);
    o.angle = 0+randomangle;
    with(obj_deadplayer_1)
    {
        direction=angle;
        image_angle=angle;
        speed=3;
    }
    
    var p;
    p=instance_create(x,y,obj_deadplayer_2);
    p.angle = 72+randomangle;
    
    with(obj_deadplayer_2)
    {
        direction=angle;
        image_angle=angle;
        speed=3;
    }
    
    var q;
    q=instance_create(x,y,obj_deadplayer_3);
    q.angle = 144+randomangle;
    
    with(obj_deadplayer_3)
    {
        direction=angle;
        image_angle=angle;
        speed=3;
    }
    
    var r;
    r=instance_create(x,y,obj_deadplayer_4);
    r.angle = 216+randomangle;
    
    with(obj_deadplayer_4)
    {
        direction=angle;
        image_angle=angle;
        speed=3;
    }
    
    var s
    s=instance_create(x,y,obj_deadplayer_5);
    s.angle = 288+randomangle;
    
    with(obj_deadplayer_5)
    {
        direction=angle;
        image_angle=angle;
        speed=3;
    }
    
    audio_play_sound(choose(snd_PlayerExplode_1,snd_PlayerExplode_2,snd_PlayerExplode_3),10,0);
    if(global.life >0)
    {
        global.life-=1;
        instance_create(room_width/2,room_height/2,obj_player);
    }
    else
    {
       instance_create(0,0,obj_gameover);
    }
    
    instance_destroy();
}

}
