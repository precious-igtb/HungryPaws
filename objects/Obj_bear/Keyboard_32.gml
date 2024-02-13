// Space Key Event
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space);

if (jumpbuffer > 0) {
    jumpbuffer--;

    if (key_jump) {
        vspeed = -30;
        gravity = 1.2;
        jumpbuffer = 0;
    }
}

vspeed += gravity;
y += vspeed;

if (place_free(x, y + 1)) {
    gravity = 1.0;
} else {
    gravity = 0;
    jumpbuffer = 10;
}

if (y > room_height + 50 || x > room_width) {
    room_restart();
}

if (vspeed < 0) {
    with (Obj_move_parent) {
        y += 20;
    }
}
