/// @description  playMusic(music)
/// @param music
function playMusic(argument0) {
	if audio_is_playing(argument0) exit
	stopSound(global.musicTrack);

	global.musicTrack=argument0;
	loopAudio(global.musicTrack);
}