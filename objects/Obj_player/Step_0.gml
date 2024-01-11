/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79DF0533
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height / 2"
if(y < room_height / 2)
{

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 351C4563
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "1"
if(vspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F69CFC3
	/// @DnDApplyTo : {Obj_move_parent}
	/// @DnDParent : 351C4563
	/// @DnDArgument : "var" "downspeed"
	/// @DnDArgument : "value" "-vspeed"
	with(Obj_move_parent) {
	var downspeed = -vspeed;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3CCC5B5F
	/// @DnDParent : 351C4563
	/// @DnDArgument : "value" "downspeed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += downspeed;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 07B7E600
	/// @DnDParent : 351C4563
	/// @DnDArgument : "value" "room_height / 2"
	/// @DnDArgument : "instvar" "1"
	y = room_height / 2;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6CEE25F3
	/// @DnDParent : 351C4563
	/// @DnDArgument : "var" "back_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "layer_get_y"
	/// @DnDArgument : "arg" ""Background""
	var back_y = layer_get_y("Background");

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 749282C5
	/// @DnDInput : 2
	/// @DnDParent : 351C4563
	/// @DnDArgument : "function" "layer_y"
	/// @DnDArgument : "arg" ""Background""
	/// @DnDArgument : "arg_1" "back_y + downspeed"
	layer_y("Background", back_y + downspeed);
}