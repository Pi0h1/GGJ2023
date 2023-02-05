/// @description Developer UI
display_set_gui_size(global.res_width, global.res_height);
draw_set_font(-1);
if global.devMode{
	var fpsString = string(fps)+"fps"+"\n"+string(fps_real)+"steps";
	var devString ="Dev mode is ON"+"\n"+fpsString+"\n"+"Global Game Jam 2023"+"\n"+"https://wwww.pi0h1.com/"+"\n"+"Press R to Restart"+"\n"+"Shift + G to Toggle Filter"+"\n"+"V to Noclip"+"\n"+"Camera zoom with Mousewheel";
	
} else {
	devString = "Press [G] to Enter Dev Mode"
}

draw_set_valign(fa_top);
draw_set_halign(fa_left);
var fpsX = 16;
var fpsY = 16;
draw_text_color(fpsX+1,fpsY-1,devString,c_black,c_black,c_black,c_black,1);
draw_text_color(fpsX-1,fpsY+1,devString,c_black,c_black,c_black,c_black,1);;
draw_text_color(fpsX-1,fpsY-1,devString,c_black,c_black,c_black,c_black,1);
draw_text_color(fpsX+1,fpsY+1,devString,c_black,c_black,c_black,c_black,1);
draw_text_color(fpsX,fpsY,devString,c_white,c_white,c_white,c_white,1);