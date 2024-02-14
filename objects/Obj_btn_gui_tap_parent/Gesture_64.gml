/// @description Execute Code
var _gui_mouse_x, _gui_mouse_y; 
_gui_mouse_x = event_data[? "guiposX"];
_gui_mouse_y = event_data[? "guiposY"];

if(position_meeting(_gui_mouse_x, _gui_mouse_y, id)) {

		

	if(global.isSoundOn) 
	{
		audio_play_sound(Snd_btn_tap, 1, false);
	}

	
	interact(); 
}