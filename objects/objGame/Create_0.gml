global.res_width = 1024;
global.res_height = 768;
nextRoom = rmTest;

window_set_size(global.res_width, global.res_height);
surface_resize(application_surface, global.res_width, global.res_height);
room_goto(nextRoom);
depth=-999;