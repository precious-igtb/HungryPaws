/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 3861104F
/// @DnDArgument : "obj" "Obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "Obj_player"
var l3861104F_0 = false;
l3861104F_0 = instance_exists(Obj_player);
if(!l3861104F_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2D09F430
	/// @DnDParent : 3861104F
	exit;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B6A6CCF
/// @DnDArgument : "expr" "-21"
/// @DnDArgument : "var" "vel_y"
vel_y = -21;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FD53D2F
/// @DnDArgument : "var" "jump_x"
/// @DnDArgument : "value" "sign(Obj_player.x-x)"
var jump_x = sign(Obj_player.x-x);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 582C9AFE
/// @DnDArgument : "expr" "jump_x*4"
/// @DnDArgument : "var" "vel_x"
vel_x = jump_x*4;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 26BFD073
alarm_set(0, 30);