/// @description move and dmg player

image_xscale = -1

if begin_move1 < 105 and Alarm_1 == true
{
x = x - 2
begin_move1 ++
	if begin_move1 >= 105
	{
	Alarm_1 = false
	Alarm_2 = true
	begin_move2 = 0
	}
}



if Alarm_2 == true
{
x = x - 2
y = y - 3
begin_move2 ++
if begin_move2 >= 105
	{
	Alarm_2 = false
	Alarm_3 = true
	begin_move3 = 0
	}
}

if Alarm_3 == true
{
x = x - 2
y = y + 3
begin_move3 ++
if begin_move3 >= 105
	{
	Alarm_3 = false
	Alarm_4 = true
	begin_move4 = 0
	}
}

if Alarm_4 == true
{
x = x + 2
y = y + 3
begin_move4 ++
if begin_move4 >= 105
	{
	Alarm_4 = false
	Alarm_5 = true
	begin_move5 = 0
	}
}

if Alarm_5 == true
{
x = x + 2
y = y - 3
begin_move5 ++
if begin_move5 >= 105
	{
	Alarm_5 = false
	Alarm_2 = true
	begin_move2 = 0
	}
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
