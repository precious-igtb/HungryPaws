if (place_meeting(x, y + vsp, Obj_platform)) {
    // Successfully jumped a platform
    global.platforms_jumped += 1;
}

// Move the bear in the specified direction until it contacts with the platform
move_contact_solid(direction, 12)
vsp = 0;

// Create jump effect 
//instance_create_layer(x+0, other.y, "Player", Obj_jump_effect);


