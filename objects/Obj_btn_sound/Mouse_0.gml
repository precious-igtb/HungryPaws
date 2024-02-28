

// Obj_btn_sound Mouse Left Button Down Event
if (mouse_check_button_pressed(mb_left)) {
		global.isSoundOn = !global.isSoundOn;
	image_index = (global.isSoundOn) ? 0 : 1;

    // Stop all sound effects if sound effects are disabled
    if (!global.isSoundOn) {
        for (var i = 0; i <= 6; i++) {
            var sound_index = global.soundEffectsArray[i];
            audio_pause_sound(sound_index);
        }
    }
}
