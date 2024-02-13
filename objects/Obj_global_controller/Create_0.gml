/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5CFA3902
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Collectibles$(13_10)global.pots_collected = 0;$(13_10)$(13_10)global.platforms_jumped = 0;$(13_10)$(13_10)//to control the frequency of the bees randomly appearing $(13_10)global.bee_spawn_timer = 0;$(13_10)$(13_10)original_sprite = sprite_index; // Store the original sprite$(13_10)switch_back_timer = fps_real; // Set the timer value (in steps)$(13_10)collision_processed = false;$(13_10)$(13_10)$(13_10)global.icicles_enabled = false;$(13_10)global.icicle_spawn_timer = 0;"
/// @description Execute Code
// Collectibles
global.pots_collected = 0;

global.platforms_jumped = 0;

//to control the frequency of the bees randomly appearing 
global.bee_spawn_timer = 0;

original_sprite = sprite_index; // Store the original sprite
switch_back_timer = fps_real; // Set the timer value (in steps)
collision_processed = false;


global.icicles_enabled = false;
global.icicle_spawn_timer = 0;