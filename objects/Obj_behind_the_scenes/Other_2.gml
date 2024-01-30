/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3A4B155E
/// @DnDArgument : "soundid" "snd_menu_music"
/// @DnDSaveInfo : "soundid" "snd_menu_music"
audio_play_sound(snd_menu_music, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0D3D7961
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "global.isMusicOn"
global.isMusicOn = true;