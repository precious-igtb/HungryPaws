/// @description Execute Code
if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {

	if(global.isSoundOn) 
	{
		audio_play_sound(Snd_btn_tap, 1, false);
	}

	interact(); 
}

image_index = 0;