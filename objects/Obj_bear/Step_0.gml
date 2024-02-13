
//// Creates variable (keyboards)
//key_left = keyboard_check(vk_left);
//key_right = keyboard_check(vk_right);
//key_jump = keyboard_check_pressed(vk_space);
//key_jump_held = keyboard_check(vk_space); // When keeping the space, jumps a bit more

//// Get horizontal move direction (-1 left, 1 right)
//var move = key_right - key_left;

//// Get horizontal speed
//hsp += move * accel;

//if (move == 0) // No key or both L and R keys pressed, slow down
//{
//	if (hsp < 0) // Going left
//	{
//		hsp = min(hsp + decel, 0) // negative increases to 0
//	}
//	else // Going right
//	{
//		hsp = max(hsp - decel, 0) // positive decreases towards 0
//	}
	
//}

//hsp = clamp(hsp, -max_hsp, max_hsp); // Limit horizontal speed
//x += hsp; // Update character's x-position

//// Flipping
//if (hsp != 0)
//{
//    image_xscale = sign(hsp);
//}

//// JUMPING
//if (jumpbuffer > 0) {
//    jumpbuffer--;

//    if (key_jump) {
//        vspeed = -30; // Adjust the initial jump height
//        gravity = 1.2; // Increase gravity during the jump for quicker descent
//        jumpbuffer = 0;
//		//play jump sound 
//		audio_play_sound(snd_jump, 3, false);
//    }
//}

//// Apply gravity
//vspeed += gravity; // Adjust the gravity value as needed
//y += vspeed;

//// Check for ground collision (assuming vertical platforms)
//if (place_free(x, y + 1)) {
//    gravity = 1.0; // Reset gravity when in the air
//} else {
//    gravity = 0;
//    jumpbuffer = 10;
//}

//// If the bear moves out of the room, restart the game
//if (y > room_height + 50 || x > room_width) {
//    //game_restart(); for some reason this does not execute as expected 
//	//play falling sound 
//	audio_play_sound(snd_falling, 2, false);
//	room_goto(rm_game);
//}

//// If the bear moves up, other sprites move down
//if (vspeed < 0) {
//    with (Obj_move_parent) {
//        y += 20;
//    }
//}


//// Check if the cooldown is zero before spawning a bee
//if (global.bee_spawn_timer <= 0 && !global.icicles_enabled) {
//    // Spawn a bee
//    instance_create_layer(room_width, irandom_range(0, room_height), "Instances", Obj_bee);

//    // Set the cooldown to prevent immediate spawning
//    global.bee_spawn_timer = irandom_range(350, 500); // Adjust the cooldown duration as needed
//}

//// Check if the cooldown is zero before spawning an icicle
//if (global.icicle_spawn_timer <= 0 && global.pots_collected >= 2)  {
//    // Spawn an icicle
//    instance_create_layer(irandom_range(0, room_width), -32, "Instances", Obj_icicle);

//    // Set the cooldown to prevent immediate spawning
//    global.icicle_spawn_timer = irandom_range(400, 700); // Adjust the cooldown duration as needed
//}

//// Reduce the cooldown on each step for bees
//if (global.bee_spawn_timer > 0) {
//    global.bee_spawn_timer -= 1;
//}

//// Reduce the cooldown on each step for icicles
//if (global.icicle_spawn_timer > 0) {
//    global.icicle_spawn_timer -= 1;
//}

//if (switch_back_timer > 0) {
//    switch_back_timer--; // Decrease the timer on each step

//   // Check if the bear is colliding with a bee
//if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, Obj_bee, false, true)) {
//    // Check if the collision was not processed in the previous step
//    if (!collision_processed) {
//        // Play "ow" sound 
//        audio_play_sound(snd_ow, 5, false, 1);

//        // Wait for a short duration (e.g., 30 steps) before changing the sprite
//        alarm[0] = 30;

//        collision_processed = true; // Set the flag to indicate collision processing
//    }
//}
//    // Check if the bear is colliding with an icicle
//     else if (place_meeting(x, y, Obj_icicle)) {
//        // Set the sprite_index to the desired sprite
//        sprite_index = Spr_bear_shocked;
		

//        // Check if the collision was not processed in the previous step
//        if (!collision_processed) {
			
//            collision_processed = true; // Set the flag to indicate collision processing
//        }
//    } else {
//        sprite_index = original_sprite; // Switch back to the original sprite
//        collision_processed = false; // Reset the collision processing flag
//    }
//} else {
//    sprite_index = original_sprite; // Switch back to the original sprite when the timer reaches 0
//    switch_back_timer = fps; // Reset the timer for the next collision
//}

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
//key_jump_held = keyboard_check(vk_space); // When keeping the space, jumps a bit more

// Get horizontal move direction (-1 left, 1 right)
var move = key_right - key_left;


// Get horizontal speed
//hsp += move * accel;
hsp = move * walksp; 

vsp = vsp + grv; 

//jumping 
//check if we're on the ground (on the platform)
if (key_jump) {

	vsp = -35; 
	grv = 2;
	
	//play jump sound 
	audio_play_sound(snd_jump, 3, false);
	
}

// Flipping
if (hsp != 0)
{
    image_xscale = sign(hsp);
}

//horizontal collision 
if(place_meeting(x+hsp, y, Obj_platform)) {
	
	while(!place_meeting(x+sign(hsp),y,Obj_platform)) //sign return 1 or -1 depending on what value we assign it  
	{
		x = x + sign(hsp);
	}
	
	hsp = 0; 
	
}

x = x + hsp; 

//vertical collision 
if(place_meeting(x, y+vsp, Obj_platform)) {
	
	while(!place_meeting(x,y+sign(vsp),Obj_platform)) //sign return 1 or -1 depending on what value we assign it  
	{
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
    //game_restart(); for some reason this does not execute as expected 
	//play falling sound 
	audio_play_sound(snd_falling, 2, false);
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
if (global.icicle_spawn_timer <= 0 && global.pots_collected >= 2)  {
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

   // Check if the bear is colliding with a bee
if (collision_rectangle(x + sprite_width/2.5, y + sprite_width/2.5, x + sprite_height/2.5, y + sprite_height/2.5, Obj_bee, false, true)) {
    // Check if the collision was not processed in the previous step
    if (!collision_processed) {

		global.pots_collected -= 1; // Decrease honey pots
		
		// Play "ow" sound 
		audio_play_sound(snd_ow, 5, false, 1);
		
        // Wait for a short duration (e.g., 30 steps) before changing the sprite
        alarm[0] = 10; 
		
        collision_processed = true; // Set the flag to indicate collision processing
    }
}
// Check if the bear is colliding with an icicle
else if (place_meeting(x, y, Obj_icicle)) {	

   // Check if the collision was not processed in the previous step
   if (!collision_processed) {
			
			alarm[1] = 10; 
			
       collision_processed = true; // Set the flag to indicate collision processing
   }
} else {
        sprite_index = original_sprite; // Switch back to the original sprite
        collision_processed = false; // Reset the collision processing flag
    }
	
	

