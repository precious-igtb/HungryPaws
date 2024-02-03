/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 087408B5
/// @DnDArgument : "var" "collected"
/// @DnDArgument : "value" "false"
if(collected == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C1A00E6
	/// @DnDParent : 087408B5
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "collected"
	collected = true;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1C97CC94
	/// @DnDParent : 087408B5
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "pots_collected"
	global.pots_collected += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E6B86D9
	/// @DnDParent : 087408B5
	instance_destroy();
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4814735D
/// @DnDArgument : "soundid" "Snd_pot_collect"
/// @DnDSaveInfo : "soundid" "Snd_pot_collect"
audio_play_sound(Snd_pot_collect, 0, 0, 1.0, undefined, 1.0);