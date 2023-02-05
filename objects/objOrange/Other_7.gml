if !instance_exists(objPlayer) exit;
my_bullet=instance_create_depth(x,y,objPlayer.depth,objStone)
my_bullet.speed=4*image_xscale;