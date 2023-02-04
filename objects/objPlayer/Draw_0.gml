draw_sprite_ext(sprite_index,image_index,x,y,playerXscale,playerYscale,image_angle,image_blend,image_alpha);

if global.devMode {
	if !isNoclip{
	draw_sprite_ext(collisionPlayer, 0,x,y,1,1,0,c_white,0.2)
	}
}