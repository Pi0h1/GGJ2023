/// @description  loopAudio(sound)
/// @param sound
function loopAudio(argument0) {
	var audioTrack = argument0

	if !audio_is_playing(argument0){
	audio_play_sound(audioTrack,1,1)
	}



}
