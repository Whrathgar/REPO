randomize();
hp = 2;
dmg = 1;
spd = random_range(2,3.5);
flash = 0;
firingdelay = 0;
shoot_timer = random_range(45,120);
bullet_dip = random_range(100000,250000);
bullet_dip_mod = choose(-50,-25,25,50);

orbit = instance_create_layer(x,y,"Enemies",oOrbit)
orbit.trg = id