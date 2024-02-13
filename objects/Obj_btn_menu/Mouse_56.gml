/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C5DF4A0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {$(13_10)	if (Snd_btn_tap != noone) audio_play_sound(Snd_btn_tap, 1, false);$(13_10)	interact(); $(13_10)}"
/// @description Execute Code
if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
	if (Snd_btn_tap != noone) audio_play_sound(Snd_btn_tap, 1, false);
	interact(); 
}