
if image_yscale < treeScale {
	image_yscale += treeGrowthSpeed;
}

if growth >= growthTotal{
instance_destroy();
}