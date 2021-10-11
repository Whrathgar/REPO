/// @description Variables
dmg = 3;
spd = 4;
begin_move1 = 0;
begin_move2 = 0
begin_move3 = 0
begin_move4 = 0
begin_move5 = 0


///Spawn Orbits
orbit = instance_create_layer(x,y,"Enemies",oBoss_1_Orbit)
orbit.plc = 0
orbit.trg = id

orbit2 = instance_create_layer(x,y,"Enemies",oBoss_1_Orbit)
orbit2.plc = 180
orbit2.trg = id

orbit3 = instance_create_layer(x,y,"Enemies",oBoss_1_Orbit)
orbit3.plc = 90
orbit3.trg = id

orbit4 = instance_create_layer(x,y,"Enemies",oBoss_1_Orbit)
orbit4.plc = 270
orbit4.trg = id

Alarm_1 = true
Alarm_2 = false
Alarm_3 = false
Alarm_4 = false
Alarm_5 = false