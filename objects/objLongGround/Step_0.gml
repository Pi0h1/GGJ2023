/// @description Insert description here
// You can write your code in this editor
if playerCheck {
	if instance_exists(objPlayer) && objPlayer.bbox_bottom<bbox_top{
		playerCheck = false;
		var deleteY = bbox_bottom + 64;
		with objEnemy if (bbox_top > deleteY)
			instance_destroy();
		with objOrange if (bbox_top > deleteY)
			instance_destroy();
		with objTurtle if (bbox_top > deleteY)
			instance_destroy();
		with objStone if (bbox_top > deleteY)
			instance_destroy();
		with objGround if (bbox_top > deleteY)
			instance_destroy();
		with objLongGround if (bbox_top > deleteY)
			instance_destroy();
		with objTreasure if (bbox_top > deleteY)
			instance_destroy();
		with objTree //if (bbox_top > deleteY)
			instance_destroy();
			
	}
}