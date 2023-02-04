if !instance_exists(objPlayer) exit

y=objPlayer.y+verticalOffset+cameraY;

if objPlayer.isMirrored{
    x=objPlayer.x-horizontalOffset;
} else {
    x=objPlayer.x+horizontalOffset
}

switch (keyboard_key){
    case ord("W"): 
        verticalOffset = -lookDistance; 
        horizontalOffset = 0;
        break;
    case ord("S"): 
        verticalOffset = lookDistance;
        horizontalOffset = 0;
        break;
    default: 
        verticalOffset = 0;
        horizontalOffset = lookDistance;
        break;
}

