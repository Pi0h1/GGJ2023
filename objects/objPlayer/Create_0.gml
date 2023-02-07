if !instance_exists(objFurthestScore){
	instance_create_depth(x,y,1,objFurthestScore);
}
if !instance_exists(objPlatformLimit){
	instance_create_depth(x-32,y,1,objPlatformLimit);
}
seedAmmo=2;
invincibility=0;
generation=0;
instance_create_depth(0,0,1,objSolidFollowPlayer);
instance_create_depth(384-32,0,1,objSolidFollowPlayer);
instance_create_depth(x,y,1,objCursor);
playerJacket = jacketIdle
colorJacket = make_colour_hsv(random(255),192,192);
hp = 6;
isClimbing = false;
isNoclip = false;
delta = min(1, (delta_time / (1000000/60)));
coyoteTime = 25;
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
depth=-11;
global.playerStartY = y;
global.playerStartX = x;
isDead=0;
levelBeaten = false;
global.controller_exists = false;
image_speed = 0.2;
grav = 0.15;
treasures = 0;
playerSpeed=2;
jspd=4;
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
PlayerFall=sprPlayerFall;
mosquitoAppear = 400
mosquitoTimer = mosquitoAppear;