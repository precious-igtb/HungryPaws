/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F608EF8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Other Necessary Events$(13_10)// Check if the cooldown is zero before spawning a bee$(13_10)if (global.bee_spawn_timer <= 0 && !global.icicles_enabled) {$(13_10)    // Spawn a bee$(13_10)    instance_create_layer(room_width, irandom_range(0, room_height), "Instances", Obj_bee);$(13_10)$(13_10)    // Set the cooldown to prevent immediate spawning$(13_10)    global.bee_spawn_timer = irandom_range(400, 800); // Adjust the cooldown duration as needed$(13_10)}$(13_10)$(13_10)// Check if the cooldown is zero before spawning an icicle$(13_10)if (global.icicle_spawn_timer <= 0 && global.pots_collected >= 2)  {$(13_10)    // Spawn an icicle$(13_10)    instance_create_layer(irandom_range(0, room_width), -32, "Instances", Obj_icicle);$(13_10)$(13_10)    // Set the cooldown to prevent immediate spawning$(13_10)    global.icicle_spawn_timer = irandom_range(400, 800); // Adjust the cooldown duration as needed$(13_10)}$(13_10)$(13_10)// Reduce the cooldown on each step for bees$(13_10)if (global.bee_spawn_timer > 0) {$(13_10)    global.bee_spawn_timer -= 1;$(13_10)}$(13_10)$(13_10)// Reduce the cooldown on each step for icicles$(13_10)if (global.icicle_spawn_timer > 0) {$(13_10)    global.icicle_spawn_timer -= 1;$(13_10)}$(13_10)$(13_10)// Switch back timer event$(13_10)if (switch_back_timer > 0) {$(13_10)    switch_back_timer--;$(13_10)$(13_10)    if (place_meeting(x, y, Obj_bee)) {$(13_10)        sprite_index = Spr_player_defeated;$(13_10)$(13_10)        if (!collision_processed) {$(13_10)            global.pots_collected -= 1;$(13_10)            collision_processed = true;$(13_10)        }$(13_10)    } else if (place_meeting(x, y, Obj_icicle)) {$(13_10)        sprite_index = Spr_player_defeated;$(13_10)$(13_10)        if (!collision_processed) {$(13_10)            // Handle collision processing for icicle$(13_10)            collision_processed = true;$(13_10)        }$(13_10)    } else {$(13_10)        sprite_index = original_sprite;$(13_10)        collision_processed = false;$(13_10)    }$(13_10)} else {$(13_10)    sprite_index = original_sprite;$(13_10)    switch_back_timer = fps;$(13_10)}$(13_10)"
/// @description Execute Code
// Other Necessary Events
// Check if the cooldown is zero before spawning a bee
if (global.bee_spawn_timer <= 0 && !global.icicles_enabled) {
    // Spawn a bee
    instance_create_layer(room_width, irandom_range(0, room_height), "Instances", Obj_bee);

    // Set the cooldown to prevent immediate spawning
    global.bee_spawn_timer = irandom_range(400, 800); // Adjust the cooldown duration as needed
}

// Check if the cooldown is zero before spawning an icicle
if (global.icicle_spawn_timer <= 0 && global.pots_collected >= 2)  {
    // Spawn an icicle
    instance_create_layer(irandom_range(0, room_width), -32, "Instances", Obj_icicle);

    // Set the cooldown to prevent immediate spawning
    global.icicle_spawn_timer = irandom_range(400, 800); // Adjust the cooldown duration as needed
}

// Reduce the cooldown on each step for bees
if (global.bee_spawn_timer > 0) {
    global.bee_spawn_timer -= 1;
}

// Reduce the cooldown on each step for icicles
if (global.icicle_spawn_timer > 0) {
    global.icicle_spawn_timer -= 1;
}

// Switch back timer event
if (switch_back_timer > 0) {
    switch_back_timer--;

    if (place_meeting(x, y, Obj_bee)) {
        sprite_index = Spr_player_defeated;

        if (!collision_processed) {
            global.pots_collected -= 1;
            collision_processed = true;
        }
    } else if (place_meeting(x, y, Obj_icicle)) {
        sprite_index = Spr_player_defeated;

        if (!collision_processed) {
            // Handle collision processing for icicle
            collision_processed = true;
        }
    } else {
        sprite_index = original_sprite;
        collision_processed = false;
    }
} else {
    sprite_index = original_sprite;
    switch_back_timer = fps;
}