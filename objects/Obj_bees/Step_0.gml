/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B47D391
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(x > room_width)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 341FDE24
	/// @DnDParent : 7B47D391
	/// @DnDArgument : "var" "new_bee_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "room_height"
	var new_bee_y = floor(random_range(0, room_height + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 55FB04C3
	/// @DnDParent : 7B47D391
	/// @DnDArgument : "x" "-100"
	/// @DnDArgument : "y" "new_bee_y"
	x = -100;
	y = new_bee_y;
}