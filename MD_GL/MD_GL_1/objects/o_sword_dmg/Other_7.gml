o_player.state = "move";
instance_destroy(o_hitbox);
instance_create_layer(o_sword_dmg.x, o_sword_dmg.y, "Weapons", o_sword_passive)
o_sword_passive.image_angle = o_sword_dmg.image_angle;
instance_destroy();
