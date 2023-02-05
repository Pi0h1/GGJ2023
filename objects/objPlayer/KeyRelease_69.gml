if instance_exists(objSeed) and objSeed.spd > 0 exit;

event_user(0);

with objTree {
event_user(0);
}

with objGame {
fadeInAlpha = 1;
}