/// @description Filter
display_set_gui_size(global.game_width, global.game_height);

if toggleFilter {
	gpu_set_blendmode(bm_add);
	draw_set_alpha(filterAlpha);
	draw_sprite_tiled(sprNoise,noiseIndex,0,0);
	noiseIndex += 0.5;
	gpu_set_blendmode(bm_subtract);
	draw_circle_color(global.game_width/2,global.game_height/2,720,c_black,c_white,0)
	draw_set_alpha(1);
	gpu_set_blendmode(bm_normal);
	draw_sprite_tiled_ext(sprScanlines,0,0,0,1,1,c_white,filterAlpha);
}