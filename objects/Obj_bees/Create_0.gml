/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 05C5A9F9
/// @DnDArgument : "speed" "random_range(2,10)"
/// @DnDArgument : "type" "1"
hspeed = random_range(2,10);

/// @DnDAction : YoYo Games.Movement.Reverse
/// @DnDVersion : 1
/// @DnDHash : 25849D8A
/// @DnDArgument : "dir" "1"
hspeed = -hspeed;