/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17DDFEC1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Assuming this code is in the Step event of Obj_btn_music$(13_10)$(13_10)// Before your code, somewhere in your initialization code or creation event$(13_10)if (mouse_check_button_pressed(mb_left))$(13_10){$(13_10)    if (image_index == 0)$(13_10)    {$(13_10)        image_index = 1;$(13_10)        audio_stop_sound(global.snd_menu_music);$(13_10)    }$(13_10)    else if (image_index == 1)$(13_10)    {$(13_10)        image_index = 0;$(13_10)        audio_resume_sound(global.snd_menu_music);$(13_10)    }$(13_10)}$(13_10)"
/// @description Execute Code
// Assuming this code is in the Step event of Obj_btn_music

// Before your code, somewhere in your initialization code or creation event
if (mouse_check_button_pressed(mb_left))
{
    if (image_index == 0)
    {
        image_index = 1;
        audio_stop_sound(global.snd_menu_music);
    }
    else if (image_index == 1)
    {
        image_index = 0;
        audio_resume_sound(global.snd_menu_music);
    }
}