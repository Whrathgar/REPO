randomize();
var ins_enemy = instance_place(x,y,oEnemy_1);
if ins_enemy
{
	ins_enemy.hp -= dmg;
	ins_enemy.flash = 3;
	instance_destroy();
}

var ins_enemy_2 = instance_place(x,y,oEnemy_2);
if ins_enemy_2
{
	ins_enemy_2.hp -= dmg;
	ins_enemy_2.flash = 3;
	instance_destroy();
}

x += spd;
y += random_range(-.05,.05);

