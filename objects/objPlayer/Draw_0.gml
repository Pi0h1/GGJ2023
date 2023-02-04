draw_sprite_ext(sprite_index,image_index,x,y,playerXscale,playerYscale,image_angle,image_blend,image_alpha);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_color(16-1,16-1,fps,c_black,c_black,c_black,c_black,1);
draw_text_color(16+1,16+1,fps,c_black,c_black,c_black,c_black,1);
draw_text_color(16,16,fps,c_white,c_white,c_white,c_white,1);