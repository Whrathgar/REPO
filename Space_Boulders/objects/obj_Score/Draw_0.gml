draw_set_font(fnt_small)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)
draw_text(64,32,string_hash_to_newline("SCORE: "+ string(global.points)));
draw_text(64,64,string_hash_to_newline("LIVES: "+ string(global.life)));


