/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55A73F69
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {$(13_10)	 if (image_index == 0)$(13_10)    {$(13_10)		if(Obj_behimd_the_scenes.snd_menu_$(13_10)        image_index = 1;$(13_10)        audio_stop_sound(snd_menu_music);$(13_10)    }$(13_10)    else$(13_10)    {$(13_10)        image_index = 0;$(13_10)        audio_resume_sound(snd_menu_music);$(13_10)    }$(13_10)}"
/// @description Execute Code

if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
	 if (image_index == 0)
    {
		if(Obj_behimd_the_scenes.snd_menu_
        image_index = 1;
        audio_stop_sound(snd_menu_music);
    }
    else
    {
        image_index = 0;
        audio_resume_sound(snd_menu_music);
    }
}