/// @description Lose Health
if invincibility > 0 exit;
hp--;
invincibility = 60;
playSound(sndHit);

playSound(choose(sndScream1,sndScream2,sndScream3,sndScream4));