

delta = min(1, (delta_time / (1000000/60)));
coyoteTime = 10;
coyoteTimer = coyoteTime;
coyoteTimeDecrease = 0.5;
isTouchingGround = false;
hasJumped = false;
isMirrored = false;
stretch=0;
yStretch=0
stretchSpeed=0.05;
playerXscale = image_xscale;
playerYscale = image_yscale;
depth=-1;
global.playerStartY = y;
global.playerStartX = x;
isDead=0;
levelBeaten = false;
global.controller_exists = false;
image_speed = 0.2;
grav = 0.15;

playerSpeed=2;
jspd=3;
hspd=0;
vspd=0;
f=0.4;
jump=0;
player_angle=0;
gamepad_set_axis_deadzone(0,0.5);
spd=playerSpeed;
gun_yscale=0;
gun_xscale=0;
PlayerWalking=sprPlayer;
PlayerIdle=sprPlayerIdle;
SolidObject=objSolid;
PlayerJump=sprPlayerJump;
PlayerFall=sprPlayerJump;