if(collected == false)
{
	collected = true;

	global.pots_collected += 1;


	if(global.isSoundOn) {
		audio_play_sound(snd_coin, 7, false);
	}
	

	instance_destroy();
}