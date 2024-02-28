if (place_meeting(x, y + vsp, Obj_platform)) {
    // Successfully jumped a platform
    global.platforms_jumped += 1;
}

// Move the bear in the specified direction until it contacts with the platform
move_contact_solid(direction, 12)
vsp = 0;
