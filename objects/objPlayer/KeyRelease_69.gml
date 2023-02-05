if instance_exists(objSeed) and objSeed.spd > 0 exit;
if instance_exists(objOldMan) {
with objOldMan instance_destroy();
}

my_id=instance_create_depth(x,y,-10,objOldMan);
my_id.image_xscale=playerXscale;
my_id.color=colorJacket;


event_user(0);

with objTree {
event_user(0);
}

with objGame {
fadeInAlpha = 1;
}

seedAmmo=2