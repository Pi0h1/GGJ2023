x+=spd*image_xscale;

if !instance_exists(objPlayer) exit;
if objPlayer.y<y and shot==0 {
	event_user(0);
}


scrOptimize();