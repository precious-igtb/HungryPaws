
// Create variable (keyboards)
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Get horizontal move direction (-1 left, 1 right)
var move = key_right - key_left;

// Get horizontal speed
hsp = move * walksp; 

vsp = vsp + grv; 

// Jumping 
if (place_meeting(x, y + 1, Obj_platform) && key_jump) {
    vsp = -35;
    grv = 2;
	
	if(global.isSoundOn) {
		
		audio_play_sound(snd_jump, 3, false);
	}
    
}

// Flipping
if (hsp != 0) {
    image_xscale = sign(hsp);
}

// Horizontal collision 
if (place_meeting(x + hsp, y, Obj_platform)) {
    while (!place_meeting(x + sign(hsp), y, Obj_platform)) {
        x = x + sign(hsp);
    }
    hsp = 0;
}

x = x + hsp; 

// Vertical collision 
if (place_meeting(x, y + vsp, Obj_platform)) {
    while (!place_meeting(x, y + sign(vsp), Obj_platform)) {
        y = y + sign(vsp);
    }
    vsp = 0; 
}

y = y + vsp;

// If the bear moves up, other sprites move down
if (vsp < 0) {
    var moveDistance = abs(vsp);  // Use the absolute value of vspeed
    with (Obj_move_parent) {
        y += moveDistance;
    }
}

// If the bear moves out of the room, restart the game
if (y > room_height + 50 || x > room_width) {
	if(global.isSoundOn) {
		
		audio_play_sound(snd_falling, 2, false);
	}
    
    room_goto(rm_game);
}

// Check if the cooldown is zero before spawning a bee
if (global.bee_spawn_timer <= 0 && !global.icicles_enabled) {
    // Spawn a bee
    instance_create_layer(room_width, irandom_range(0, room_height), "Instances", Obj_bee);

    // Set the cooldown to prevent immediate spawning
    global.bee_spawn_timer = irandom_range(350, 500); // Adjust the cooldown duration as needed
}

// Check if the cooldown is zero before spawning an icicle
if (global.icicle_spawn_timer <= 0 && global.pots_collected >= 2) {
    // Spawn an icicle
    instance_create_layer(irandom_range(0, room_width), -32, "Instances", Obj_icicle);

    // Set the cooldown to prevent immediate spawning
    global.icicle_spawn_timer = irandom_range(400, 700); // Adjust the cooldown duration as needed
}

// Reduce the cooldown on each step for bees
if (global.bee_spawn_timer > 0) {
    global.bee_spawn_timer -= 1;
}

// Reduce the cooldown on each step for icicles
if (global.icicle_spawn_timer > 0) {
    global.icicle_spawn_timer -= 1;
}


if (switch_back_timer > 0) {
    switch_back_timer--; // Decrease the timer on each step

// Check if the bear is colliding with a bee
if (global.collidedBee) {
    // Check if the collision was not processed in the previous step
    if (!collision_processed) {
        // Play "ow" sound 
		if(global.isSoundOn) {
		
		audio_play_sound(snd_ow, 5, false, 1);
		}
        global.pots_collected -= 1; // Decrease honey pots

        // Wait for a short duration (e.g., 30 steps) before changing the sprite
        sprite_index = Spr_player_defeated;

        collision_processed = true; // Set the flag to indicate collision processing
    }
}
    // Check if the bear is colliding with an icicle
     else if (place_meeting(x, y, Obj_icicle)) {
        // Set the sprite_index to the desired sprite
        sprite_index = Spr_bear_shocked;
		

        // Check if the collision was not processed in the previous step
        if (!collision_processed) {
			
            collision_processed = true; // Set the flag to indicate collision processing
        }
    } else {
        sprite_index = original_sprite; // Switch back to the original sprite
        collision_processed = false; // Reset the collision processing flag
    }
} else {
    sprite_index = original_sprite; // Switch back to the original sprite when the timer reaches 0
    switch_back_timer = fps; // Reset the timer for the next collision
}



