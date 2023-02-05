/// @description Game UI
display_set_gui_size(global.game_width, global.game_height);
draw_set_font(fntLunchtime);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
var treasureX = global.game_width/2;
var treasureY = 32+10;

var SCOREX = global.game_width/2;
var SCOREY = 32;
var i = 0;

if room=rmMenu {
var rewardString = "OF ENVIRONMENTALISM AND CASH"
var travelString = "A MULTIGENERATIONAL ADVENTURE"
}
else{
if instance_exists(objPlayer){
	var rewardString = "SPOILS OF ADVENTURE: $"+string(objPlayer.treasures)
	var travelString = "FURTHEST YOU GOT: "+string(-objFurthestScore.y)+"pxls"+"\n\n"+"Current Generation: "+string(objPlayer.generation);
}
}

if instance_exists(objPlayer){
	draw_text_color(treasureX-1,treasureY-1,rewardString,c_black,c_black,c_black,c_black,1);
	draw_text_color(treasureX+1,treasureY+1,rewardString,c_black,c_black,c_black,c_black,1);
	draw_text_color(treasureX,treasureY,rewardString,c_white,c_white,c_white,c_white,1);
	
	draw_text_color(SCOREX-1,SCOREY-1,travelString,c_black,c_black,c_black,c_black,1);
	draw_text_color(SCOREX+1,SCOREY+1,travelString,c_black,c_black,c_black,c_black,1);
	draw_text_color(SCOREX,SCOREY,travelString,c_white,c_white,c_white,c_white,1);

	//draw_text_color(global.game_width/2,global.game_height-16,"Generation "+string(objPlayer.generation),c_white,c_white,c_white,c_white,1);

	repeat (3){
		//draw_sprite_ext(sprHeartBroken,0,16,16+(32*a),heartScale,heartScale,1,c_white,1);
		//a++;
	}
	
	repeat (objPlayer.hp){
		draw_sprite_ext(sprHeart,0,24,20+(32*i),heartScale,heartScale,1,c_white,1);
		i++;
	}
}

