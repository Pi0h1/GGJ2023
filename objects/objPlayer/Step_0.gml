scrPlayerBehaviour();

if isDead {
	room_restart();
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