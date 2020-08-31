/// @description move and dmg player

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