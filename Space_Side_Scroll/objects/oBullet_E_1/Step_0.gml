var ins_enemy = instance_place(x,y,oPlayer);
if ins_enemy
{
	ins_enemy.hp -= dmg;
	ins_enemy.flash = 3;
	instance_destroy();
}

//x += spd;
//y += random_range(-.05,.05)


x-= lengthdir_x(spd,direction);
y-= lengthdir_y(spd,direction);

if (x < -100) or (x > room_width + 100)
{
	instance_destroy();
}
if (y < -100) or (y > room_height + 100)
{
	instance_destroy();
}
