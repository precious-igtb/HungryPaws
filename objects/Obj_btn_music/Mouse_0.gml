/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 41B62313
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (mouse_check_button_pressed(mb_left)) {$(13_10)$(13_10)	global.isMusicOn = !global.isMusicOn;$(13_10)	image_index = (global.isMusicOn) ? 0 : 1;$(13_10)	$(13_10)     //Toggle background music$(13_10)    if (global.isMusicOn) {$(13_10)        audio_resume_all();$(13_10)    } else {$(13_10)        audio_pause_all();$(13_10)    }$(13_10)}"
/// @description Execute Code
if (mouse_check_button_pressed(mb_left)) {

	global.isMusicOn = !global.isMusicOn;
	image_index = (global.isMusicOn) ? 0 : 1;
	
     //Toggle background music
    if (global.isMusicOn) {
        audio_resume_all();
    } else {
        audio_pause_all();
    }
}