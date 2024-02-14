/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D091FF7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//state = "hidden"; // Initial state$(13_10)//show_lose_scr$(13_10)$(13_10)$(13_10)//play lose sound 		$(13_10)if(global.isSoundOn) {$(13_10)		$(13_10)		audio_play_sound(snd_game_over, 5, false,1);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

//state = "hidden"; // Initial state
//show_lose_scr


//play lose sound 		
if(global.isSoundOn) {
		
		audio_play_sound(snd_game_over, 5, false,1);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 2CFF9458
/// @DnDArgument : "soundid" "snd_game_over"
/// @DnDSaveInfo : "soundid" "snd_game_over"
var l2CFF9458_0 = snd_game_over;
if (audio_is_playing(l2CFF9458_0))
{
	/// @DnDAction : YoYo Games.Audio.Pause_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2E656311
	/// @DnDParent : 2CFF9458
	/// @DnDArgument : "sound" "snd_menu_music"
	/// @DnDSaveInfo : "sound" "snd_menu_music"
	audio_pause_sound(snd_menu_music);
}