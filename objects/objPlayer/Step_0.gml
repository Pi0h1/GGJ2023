scrPlayerBehaviour();

if isDead {
	room_restart();
}

if sprite_index=PlayerIdle {playerJacket = jacketIdle}
if sprite_index=PlayerJump {playerJacket = jacketJump}
if sprite_index=PlayerWalking {playerJacket = jacketWalk}