/// @description Place Shield
// You can write your code in this editor

if instance_exists(oPlayer)
{
	x=oPlayer.x+8
	y=oPlayer.y
}

if dmg_time > 0
{
	dmg_time --
}

if hp <= 0
{
	instance_create_layer(x=oPlayer.x+8, y=oPlayer.y, "Player", oShieldP_Breaks)
	instance_destroy()
}