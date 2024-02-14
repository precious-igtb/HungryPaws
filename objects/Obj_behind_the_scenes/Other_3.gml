/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3680D673
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// Stop Audio$(13_10)if(!global.isMusicOn) {$(13_10)audio_stop_sound(snd_menu_music);$(13_10)}"
/// @description Execute Code

// Stop Audio
if(!global.isMusicOn) {
audio_stop_sound(snd_menu_music);
}