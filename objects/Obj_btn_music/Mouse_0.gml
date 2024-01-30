/// @description Insert description here
// You can write your code in this editor



//if (mouse_check_button_pressed(mb_left)) {

	//global.isMusicOn = !global.isMusicOn;
	//image_index = (global.isMusicOn) ? 0 : 1;
	
    // Toggle background music
    //if (global.isMusicOn) {
    //    audio_resume_all();
    //} else {
      //  audio_pause_all();
    //}
	//}
	
	
if(mouse_check_button_pressed(mb_left)) {
	
	if(audio_is_playing(snd_menu_music)) {
		//toggle music off
		image_index = 1; 
		global.isMusicOn = false; 
		audio_pause_sound(snd_menu_music);
	}
	else {
		//toggle music on 
		image_index = 0; 
		global.isMusicOn = true; 
		audio_resume_sound(snd_menu_music);
	
	}
}























































