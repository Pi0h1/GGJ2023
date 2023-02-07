if invincibility > 0{
//draw_sprite_ext(sprPlayerHit,image_index,x+1,y+1,playerXscale,playerYscale,image_angle,c_black,0.5);
draw_sprite_ext(sprPlayerHit,hurtIndex,x,y,playerXscale,playerYscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(jacketHit,hurtIndex,x,y,playerXscale,playerYscale,image_angle,colorJacket,image_alpha);
hurtIndex+=0.2;
image_alpha = 0.75
} else{
draw_sprite_ext(sprite_index,image_index,x+1,y+1,playerXscale,playerYscale,image_angle,c_black,0.5);
draw_sprite_ext(sprite_index,image_index,x,y,playerXscale,playerYscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(playerJacket,image_index,x,y,playerXscale,playerYscale,image_angle,colorJacket,image_alpha);
image_alpha = 1;
}


if global.devMode {
	if !isNoclip{
	draw_sprite_ext(collisionPlayer, 0,x,y,1,1,0,c_white,0.2)
	}

draw_text(x,y-8,"climbing = "+ string(isClimbing));
}


//draw_text(x,y,"mosquito will appear in: "+string(mosquitoTimer))