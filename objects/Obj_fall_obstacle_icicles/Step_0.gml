/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6792E8D3
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height+380"
if(y > room_height+380)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 105A3FA2
	/// @DnDParent : 6792E8D3
	/// @DnDArgument : "var" "new_icicle_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "200"
	/// @DnDArgument : "max" "room_width-200"
	var new_icicle_x = floor(random_range(200, room_width-200 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 10CC3AC2
	/// @DnDParent : 6792E8D3
	/// @DnDArgument : "x" "new_icicle_x"
	/// @DnDArgument : "y" "-200"
	x = new_icicle_x;
	y = -200;
}