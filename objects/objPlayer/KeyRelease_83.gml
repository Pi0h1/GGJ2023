if isClimbing exit;
if !isTouchingGround exit;
if room=rmMenu exit;
if seedAmmo <= 0 exit;
instance_create_depth(x,y,1,objSeed);
seedAmmo--;