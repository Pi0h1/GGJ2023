/// @description Noclip
if !instance_exists(objPlayer) exit;
if! global.devMode exit;
objPlayer.isNoclip = !objPlayer.isNoclip;