/// @description Execute Code
if (mouse_check_button_pressed(mb_left)) {

	global.isSoundOn = !global.isSoundOn;
	image_index = (global.isSoundOn) ? 0 : 1;
	
     //Toggle all sounds excep for background music 
    if (global.isSoundOn) {
        audio_resume_sound(snd_btn_tap);
		audio_resume_sound(snd_coin);
		audio_resume_sound(snd_falling);
		audio_resume_sound(snd_jump);
		audio_resume_sound(snd_ow);
		audio_resume_sound(snd_game_over);
    } else {
        audio_pause_sound(snd_btn_tap);
		audio_pause_sound(snd_coin);
		audio_pause_sound(snd_falling);
		audio_pause_sound(snd_jump);
		audio_pause_sound(snd_ow);
		audio_pause_sound(snd_game_over);
    }
}