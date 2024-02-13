if(collected == false)
{
	collected = true;

	global.pots_collected += 1;

	audio_play_sound(snd_coin, 0, 0, 1.0, undefined, 1.0);

	instance_destroy();
}