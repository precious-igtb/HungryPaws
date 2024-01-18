/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 575564F8
/// @DnDArgument : "xpos" "random(room_width)"
/// @DnDArgument : "ypos" "random(room_height)"
/// @DnDArgument : "objectid" "Obj_fall_obstacle_icicles"
/// @DnDArgument : "layer" ""icicles""
/// @DnDSaveInfo : "objectid" "Obj_fall_obstacle_icicles"
instance_create_layer(random(room_width), random(room_height), "icicles", Obj_fall_obstacle_icicles);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 043B8B68
/// @DnDArgument : "steps" "spawnrate"
alarm_set(0, spawnrate);