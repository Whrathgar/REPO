/// @description Place Shield
// You can write your code in this editor
x=oPlayer.x+8
y=oPlayer.y

if dmg_time > 0
{
	dmg_time --
}

if hp <= 0
{
	instance_destroy()
}