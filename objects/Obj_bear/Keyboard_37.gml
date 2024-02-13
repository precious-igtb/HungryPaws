// Left Key Event
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

var move = key_right - key_left;

hsp += move * accel;

if (move == 0) {
    if (hsp < 0) {
        hsp = min(hsp + decel, 0);
    } else {
        hsp = max(hsp - decel, 0);
    }
}

hsp = clamp(hsp, -max_hsp, max_hsp);
x += hsp;

if (hsp != 0) {
    image_xscale = sign(hsp);
}
