if !instance_exists(objPlayer) exit

if attacked=false{
	move_towards_point(objPlayer.x,objPlayer.y,0.5)
}

if place_meeting(x,y,objPlayer){
	attacked=true
}

if attacked {
	y-=5;
	objPlayer.mosquitoTimer=objPlayer.mosquitoAppear;
}

if point_distance(x,y,objPlayer.x,objPlayer.y) > 300
{
instance_destroy();
}

if room=rmMenu {instance_destroy();}