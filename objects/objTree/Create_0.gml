depth=-9

sprite_index = choose(sprTree, sprTree2,sprTree3);

growth = 0;
treeScale = image_yscale;
treeGrowthSpeed = 0.05;

growthTotal = 3;

if place_meeting(x,y,objTree){
instance_destroy();
}

image_xscale=choose(1,-1);

with objCamera {
shake = 15;
}