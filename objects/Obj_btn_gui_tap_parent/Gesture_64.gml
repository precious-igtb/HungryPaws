/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 403F8C19
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var _gui_mouse_x, _gui_mouse_y; $(13_10)_gui_mouse_x = event_data[? "guiposX"];$(13_10)_gui_mouse_y = event_data[? "guiposY"];$(13_10)$(13_10)if(position_meeting(_gui_mouse_x, _gui_mouse_y, id)) {$(13_10)	if (Snd_btn_tap != noone) audio_play_sound(Snd_btn_tap, 1, false);$(13_10)	interact(); $(13_10)}"
/// @description Execute Code
var _gui_mouse_x, _gui_mouse_y; 
_gui_mouse_x = event_data[? "guiposX"];
_gui_mouse_y = event_data[? "guiposY"];

if(position_meeting(_gui_mouse_x, _gui_mouse_y, id)) {
	if (Snd_btn_tap != noone) audio_play_sound(Snd_btn_tap, 1, false);
	interact(); 
}