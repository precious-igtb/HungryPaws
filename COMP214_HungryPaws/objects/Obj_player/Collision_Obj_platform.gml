// Move the bear in the specified direction until it contacts with the platform
move_contact_solid(direction, 12)
vspeed = -25;

// Create jump effect 
instance_create_layer(x+0, other.y, "Player", Obj_jump_effect);

// Add jump sound
//audio_play_sound(Snd_jump, 0, 0, 1.0, undefined, 1.0);