/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16199004
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
if(vspeed > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 33182B63
	/// @DnDParent : 16199004
	gravity = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 00361AD9
	/// @DnDParent : 16199004
	/// @DnDArgument : "speed" "-28"
	/// @DnDArgument : "type" "2"
	vspeed = -28;
}