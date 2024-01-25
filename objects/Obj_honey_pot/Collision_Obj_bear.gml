/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 087408B5
/// @DnDArgument : "var" "collected"
/// @DnDArgument : "value" "false"
if(collected == false)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1C97CC94
	/// @DnDParent : 087408B5
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "pots_collected"
	global.pots_collected = 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C1A00E6
	/// @DnDParent : 087408B5
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "collected"
	collected = true;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0204977A
	/// @DnDParent : 087408B5
	/// @DnDArgument : "var" "global.pots_collected"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "global.max_pots"
	if(global.pots_collected < global.max_pots)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40E42798
		/// @DnDParent : 0204977A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "global.pots_collected"
		global.pots_collected += 1;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 552656F9
		/// @DnDParent : 0204977A
		instance_destroy();
	}
}