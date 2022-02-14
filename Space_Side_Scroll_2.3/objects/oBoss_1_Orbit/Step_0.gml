/// @description orbit step
if instance_exists(trg)
{
x = trg.x + lengthdir_x(lng,plc);
y = trg.y + lengthdir_y(lng,plc);
plc += spd;



shoot_timer --
if shoot_timer <= 0 && instance_exists(oPlayer) && point_direction(x,y,oPlayer.x,oPlayer.y) > 90 && point_direction(x,y,oPlayer.x,oPlayer.y) < 270
{
	//instance_create_layer(x,y,"Instances",oBullet_E_1);
	audio_sound_pitch(sndGun_1,choose(.8,1,1.2));
	audio_play_sound(sndGun_1,1,false);
	with (instance_create_layer(x,y,"Instances",oBullet_E_2))
	{
	dip_ = other.bullet_dip;
	dip_modifier = other.bullet_dip_mod;
	direction = point_direction(other.x,other.y,oPlayer.x,oPlayer.y);
	image_angle = direction;
	}
		
	shoot_timer = random_range(30,90);
}





///DMG player if touch player
var ins_enemy_shield = instance_place(x,y,oShield_P);

//if ins_enemy_shield.flash <=0
//{
if ins_enemy_shield and ins_enemy_shield.flash <=0
{
	ins_enemy_shield.hp -= dmg;
	ins_enemy_shield.flash = 30;
	
}
//}

if !instance_exists(oShield_P)
{
var ins_enemy = instance_place(x,y,oPlayer);
if ins_enemy and ins_enemy.flash <=0
{
	ins_enemy.hp -= dmg;
	ins_enemy.flash = 30;
	
}
}


}
else
instance_destroy()