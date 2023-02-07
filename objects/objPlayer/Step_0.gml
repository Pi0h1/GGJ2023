scrPlayerBehaviour();

if isDead {
	//room_restart();
	instance_destroy();
	instance_create_depth(x,y,1,objPlayerDeath);
	//playSound(sndDead)
	
}

if sprite_index=PlayerIdle {playerJacket = jacketIdle}
if sprite_index=PlayerJump {playerJacket = jacketJump}
if sprite_index=PlayerWalking {playerJacket = jacketWalk}
if sprite_index=PlayerFall {playerJacket = jacketFall}

if isClimbing {sprite_index=sprPlayerClimbing; playerJacket = jacketClimb;}

if invincibility > 0 invincibility--;
if invincibility < 0 invincibility = 0;

if hp=0 {
 isDead = true;
}

if mosquitoTimer > 0 mosquitoTimer -= 1;
if mosquitoTimer <= 0 {
if !instance_exists(objMosquito) instance_create_depth(x+random(64),y+128,objPlayer.depth,objMosquito)
mosquitoTimer = mosquitoAppear;
}
