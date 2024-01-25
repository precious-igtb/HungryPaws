/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25E3BFA1
/// @DnDArgument : "var" "collected"
/// @DnDArgument : "value" "false"
if(collected == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C2DF2E3
	/// @DnDParent : 25E3BFA1
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "collected"
	collected = true;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 291340E3
	/// @DnDParent : 25E3BFA1
	instance_destroy();
}