/// @description Execute Code

//state = "hidden"; // Initial state
//show_lose_scr


//play lose sound 		
if(global.isSoundOn) {
		
		audio_play_sound(snd_game_over, 5, false,1);
}

var l2CFF9458_0 = snd_game_over;
if (audio_is_playing(l2CFF9458_0))
{
	audio_pause_sound(snd_menu_music);
}