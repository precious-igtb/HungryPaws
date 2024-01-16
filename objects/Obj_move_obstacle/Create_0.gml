/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1F18325E
/// @DnDArgument : "speed" "3"
/// @DnDArgument : "type" "1"
hspeed = 3;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
/// @DnDVersion : 1.1
/// @DnDHash : 78E13C85
/// @DnDArgument : "direction" "180,0"
direction = choose(180,0);

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 1D56BCE1
/// @DnDArgument : "dir" "1"
hspeed = -hspeed;