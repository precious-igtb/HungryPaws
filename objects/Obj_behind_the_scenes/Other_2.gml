/// @description Execute Code
// Set Global Variable
global.isMusicOn = true;
global.isSoundOn = true;

// Play Audio
if(global.isMusicOn)
{
audio_play_sound(snd_menu_music, 1, true);
}
