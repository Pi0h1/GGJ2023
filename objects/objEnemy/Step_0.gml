x+=spd*way;

if x>340 or x<32 {way=-way;}

if !place_meeting(x+way,y+3,objSolid) {way=-way;}

image_xscale=way;
