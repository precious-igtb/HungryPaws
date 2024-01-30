/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5573C8BA
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height+380"
if(y > room_height+380)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 2E07124E
	/// @DnDParent : 5573C8BA
	/// @DnDArgument : "var" "new_icicle_x"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "200"
	/// @DnDArgument : "max" "room_width-200"
	new_icicle_x = floor(random_range(200, room_width-200 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 56F8ADAD
	/// @DnDParent : 5573C8BA
	/// @DnDArgument : "x" "new_icicle_x"
	/// @DnDArgument : "y" "-200"
	x = new_icicle_x;
	y = -200;
}