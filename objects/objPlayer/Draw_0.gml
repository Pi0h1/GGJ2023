draw_sprite_ext(sprite_index,image_index,x,y,playerXscale,playerYscale,image_angle,image_blend,image_alpha);

var fpsString = string(fps)+"fps";
var fpsX = 64;
var fpsY = 16;
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text_color(fpsX-1,fpsY-1,fpsString,c_black,c_black,c_black,c_black,1);
draw_text_color(fpsX+1,fpsY+1,fpsString,c_black,c_black,c_black,c_black,1);
draw_text_color(fpsX,fpsY,fpsString,c_white,c_white,c_white,c_white,1);