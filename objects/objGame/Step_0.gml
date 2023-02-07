if !global.devMode {
	if instance_exists(objPlayer) {
		objPlayer.isNoclip = false;
	}
}

if fadeInAlpha > 0 fadeInAlpha -= fadeSpeed;
if fadeInAlpha < 0 fadeInAlpha = 0;

heartScale -=0.01;
if heartScale < 0.75 heartScale = 1;


if global.devMode {
	camera_set_view_size(view_camera[0],global.game_width+cameraZoom, global.game_height+cameraZoom);
} else {
	camera_set_view_size(view_camera[0],global.game_width, global.game_height);
}

	if room=rmInit{

	if !audio_is_playing(sndGameJam) or keyboard_check_released(vk_space){
			room_goto(rmCredits);
			if keyboard_check_released(vk_space) {stopSound(sndGameJam)}
		}
	}

	if room=rmCredits{

	if !audio_is_playing(sndCredits) or keyboard_check_released(vk_space){
			room_goto(nextRoom);
			if keyboard_check_released(vk_space) {stopSound(sndCredits)}
	}
	}