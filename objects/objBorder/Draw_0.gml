draw_sprite_tiled_ext(sprite_index,0,x,y,1,1,c_white,1);

draw_set_colour(color)
draw_rectangle(32,objCamera.y-200,384-33,objCamera.y+200,0);
draw_set_colour(c_white)

if room=rmTest{
draw_sprite_tiled(fondo_arbol_medio_2,0,x,objCamera.y/2)
draw_sprite_tiled(fondo_arbol_3,0,x,objCamera.y/4)
}