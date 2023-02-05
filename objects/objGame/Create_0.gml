full=false;
global.game_width	= 384;
global.game_height	= 272;

global.res_width	= 1024;
global.res_height	= 768;

window_set_size(global.res_width, global.res_height);
surface_resize(application_surface, global.res_width, global.res_height);

camera_set_view_size(view_camera[0],global.game_width, global.game_height);

cameraZoom = 0;

nextRoom = rmMenu;

//room_goto(nextRoom);

depth=-999;

global.devMode = false;

noiseIndex = 0;

filterAlpha = 0.1;

toggleFilter = true;

global.musicTrack = 0;

fadeInAlpha = 1;
fadeSpeed = 0.05;

heartScale = 1;