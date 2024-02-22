/// Obj_sound_button Draw Event
// Obj_sound_button Draw Event
if (global.sound_effects_enabled) {
    // Draw the button for sound effects enabled (frame 0)
    draw_sprite(Spr_btn_sound, 0, x, y);
} else {
    // Draw the button for sound effects disabled (frame 1)
    draw_sprite(Spr_btn_sound, 1, x, y);
}
