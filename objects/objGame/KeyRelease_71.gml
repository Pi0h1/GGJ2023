/// @description Toggle Filter
if keyboard_check(vk_shift){
	if global.devMode{	toggleFilter = !toggleFilter; }
} else {
	global.devMode = !global.devMode;
}