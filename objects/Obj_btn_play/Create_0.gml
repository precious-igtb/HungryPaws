/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 79F62B76
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D79F8A1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)interact = function() {$(13_10)	room_goto(rm_game);$(13_10)}"
/// @description Execute Code

interact = function() {
	room_goto(rm_game);
}