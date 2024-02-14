/// @description Execute Code


sprite_index = Spr_btn_sound;
image_speed = 0;

image_index = (global.isSoundOn) ? 0 : 1;


// Initialize sound array
global.soundEffectsArray = [snd_btn_tap, snd_coin, snd_falling, snd_game_over, snd_jump, snd_ow, snd_win]; // Add your sound effect indices here
