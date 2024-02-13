/// @description Execute Code
// Obj_icicle Step Event

if (falling) {
    // Apply Gravity
    vspeed += gravity;

    // Update Position
    y += vspeed;

    // Check for Collision with Ground or Platform 
    if (place_meeting(x, y + vspeed, Obj_platform)) {
        vspeed = 0;  // Stop falling upon collision with the platform
        falling = false;
    }
}

// Check for Collision with Player 
if (place_meeting(x, y, Obj_bear)) {
	
	room_goto(rm_game_over);
    
	
    
}