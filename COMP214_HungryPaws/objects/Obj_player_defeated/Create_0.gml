/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 54923768
/// @DnDArgument : "speed" "-15"
/// @DnDArgument : "type" "2"
vspeed = -15;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 347DB145
gravity = 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 61AF46A6
/// @DnDArgument : "soundid" "Snd_player_defeated"
/// @DnDSaveInfo : "soundid" "Snd_player_defeated"
audio_play_sound(Snd_player_defeated, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 252A5EC6
/// @DnDArgument : "soundid" "Snd_game_music"
/// @DnDSaveInfo : "soundid" "Snd_game_music"
audio_stop_sound(Snd_game_music);