var x1 = 0+random(5);
var x2 = 284-random(5);

if longPlatformChance == 0 {
instance_create_depth(0, y, 1, objLongGround);
} else {
my_id=instance_create_depth(x1,y,1,objGround)
my_id.image_xscale = random(1)+choose(1,2);

my_id2=instance_create_depth(x2,y,1,objGround)
my_id2.image_xscale = random(1)+choose(1,2);

if value <= 6 {
instance_create_depth(choose(x1+32,x2),y,10,choose(objEnemy,objTurtle,objOrange))
}

if treasureChance <= 4 {
instance_create_depth(choose(x1+64,x2-64),y-32,10,objTreasure)
}
}