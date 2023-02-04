/// @description Game UI
display_set_gui_size(global.game_width, global.game_height);
draw_set_font(fntLunchtime);
draw_set_valign(fa_top);
draw_set_halign(fa_right);
var treasureX = global.game_width-8;
var treasureY = 8;


if instance_exists(objPlayer){
	draw_text_color(treasureX-1,treasureY-1,string(objPlayer.treasures),c_black,c_black,c_black,c_black,1);
	draw_text_color(treasureX+1,treasureY+1,string(objPlayer.treasures),c_black,c_black,c_black,c_black,1);
	draw_text_color(treasureX,treasureY,string(objPlayer.treasures),c_white,c_white,c_white,c_white,1);
}