/// @description Lose Health
if invincibility > 0 exit;
hp--;
invincibility = 60;
playSound(sndHit);
if place_meeting(x,y,objStone){
	playSound(sndRockImpact); 
	with other {instance_destroy();}
	}
playSound(choose(sndScream1,sndScream2,sndScream3,sndScream4));
with objCamera {shake = 10;}

my_id=instance_create_depth(x,y,-1,objTreasureGot)
my_id.isGood = false;
my_id.rewardString = "- 1hp"