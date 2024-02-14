///// @description Execute Code
//if (mouse_check_button_pressed(mb_left)) {

//	global.isSoundOn = !global.isSoundOn;
//	image_index = (global.isSoundOn) ? 0 : 1;
	
//	// Toggle sound effects on/off
//global.soundEffectsEnabled = !global.soundEffectsEnabled;

//// Adjust sound effects volume based on the state
//if (global.soundEffectsEnabled) {
//    global.soundEffectsVolume = 1.0; // Full volume
//} else {
//    global.soundEffectsVolume = 0.0; // Muted
//}

//// Call the script to apply the volume changes
//scr_AdjustSoundEffectsVolume();

//}

// Obj_btn_sound Mouse Left Button Down Event
if (mouse_check_button_pressed(mb_left)) {
		global.isSoundOn = !global.isSoundOn;
	image_index = (global.isSoundOn) ? 0 : 1;

    //// Adjust sound effects volume
    //for (var i = 0; i < 7; i++) {
    //    var sound_index = global.soundEffectsArray[i];
    //    audio_sound_gain(sound_index, global.soundEffectsVolume, 0);
    //}

    // Stop all sound effects if sound effects are disabled
    if (!global.isSoundOn) {
        for (var i = 0; i <= 6; i++) {
            var sound_index = global.soundEffectsArray[i];
            audio_pause_sound(sound_index);
        }
    }
}
