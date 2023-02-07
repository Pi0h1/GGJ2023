if instance_exists(objPlayer){
	objPlayer.treasures+=value;
}

playSound(sndCoin);
//playSound(sndPop);

my_id=instance_create_depth(x,y,-30,objTreasureGot);
my_id.rewardString = "+ $"+string(value);

effect_create_below(ef_ring,x,y,16,c_yellow)