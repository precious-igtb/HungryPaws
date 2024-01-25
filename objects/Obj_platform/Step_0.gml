/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13A8977B
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height +500"
if(y > room_height +500)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 0EF3FB50
	/// @DnDParent : 13A8977B
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "440"
	/// @DnDArgument : "max" "room_width - 440"
	var new_x = floor(random_range(440, room_width - 440 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 37D3DE12
	/// @DnDParent : 13A8977B
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-400"
	x = new_x;
	y = -400;
}