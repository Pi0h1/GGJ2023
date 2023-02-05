if instance_exists(objGrave) {
with objGrave instance_destroy();
}

my_id=instance_create_depth(x,y,-10,objGrave);
my_id.image_xscale=image_xscale;