/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 693C84F4
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "spawnrate"
spawnrate = 10;

/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 61C3EE91
/// @DnDArgument : "var" "spawnrate"
spawnrate = alarm_get(0);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 2C19841C
/// @DnDArgument : "speed" "3"
/// @DnDArgument : "type" "2"
vspeed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 74BE279F
/// @DnDArgument : "direction" "270"
direction = 270;