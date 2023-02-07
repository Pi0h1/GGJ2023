draw_self();
draw_set_font(fntLunchtime)
draw_set_halign(fa_middle)
draw_set_valign(fa_center)
if isGood {
draw_text_color(x-1,y-1,rewardString,c_black,c_black,c_black,c_black,fade);
draw_text_color(x+1,y+1,rewardString,c_black,c_black,c_black,c_black,fade);
draw_text_color(x,y,rewardString,c_yellow,c_yellow,c_orange,c_orange,fade);
} else {
draw_text_color(x-1,y-1,rewardString,c_black,c_black,c_black,c_black,fade);
draw_text_color(x+1,y+1,rewardString,c_black,c_black,c_black,c_black,fade);
draw_text_color(x,y,rewardString,c_red,c_red,c_maroon,c_maroon,fade);
}
y-=1;


if fade  >0 fade += -0.01;
if fade < 0 fade = 0

if fade <=0 {
instance_destroy();
}