/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 300722C8
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_player_defeated"
/// @DnDArgument : "layer" ""Player""
/// @DnDSaveInfo : "objectid" "Obj_player_defeated"
instance_create_layer(x + 0, y + 0, "Player", Obj_player_defeated);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E1F55B8
instance_destroy();