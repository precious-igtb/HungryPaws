if(y > room_height + 50)
{
	room_goto(rm_game);
	audio_play_sound(snd_falling, 2, false);
}