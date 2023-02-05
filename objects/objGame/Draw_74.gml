/// @description Game UI
display_set_gui_size(global.game_width, global.game_height);
draw_set_font(fntLunchtime);
draw_set_valign(fa_top);
draw_set_halign(fa_right);
var treasureX = global.game_width-8;
var treasureY = 8;
var i = 0;
var a = 0;

if instance_exists(objPlayer){
	draw_text_color(treasureX-1,treasureY-1,string(objPlayer.treasures),c_black,c_black,c_black,c_black,1);
	draw_text_color(treasureX+1,treasureY+1,string(objPlayer.treasures),c_black,c_black,c_black,c_black,1);
	draw_text_color(treasureX,treasureY,string(objPlayer.treasures),c_white,c_white,c_white,c_white,1);

	draw_text_color(global.game_width/2,global.game_height-16,"Generation "+string(objPlayer.generation),c_white,c_white,c_white,c_white,1);

	repeat (3){
		draw_sprite_ext(sprHeartBroken,0,16,16+(32*a),heartScale,heartScale,1,c_white,1);
		a++;
	}
	
	repeat (objPlayer.hp){
		draw_sprite_ext(sprHeart,0,16,16+(32*i),heartScale,heartScale,1,c_white,1);
		i++;
	}
}