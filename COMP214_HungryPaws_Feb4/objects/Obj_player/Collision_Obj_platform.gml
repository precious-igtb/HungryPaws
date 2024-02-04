// Move the bear in the specified direction until it contacts with the platform
//move_contact_solid(direction, 12)
//vspeed = 0;
//gravity = 0;

//if(key_jump == 1){
//	vspeed = -25;
//	gravity = 1;

//}

// Create jump effect 
//instance_create_layer(x+0, other.y, "Player", Obj_jump_effect);

// Add jump sound
//audio_play_sound(Snd_jump, 0, 0, 1.0, undefined, 1.0);

key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space); // When keeping the space, jumps a bit more

// Test - New Ver
if(vspeed > 0)
{
   gravity = 0.8;
	// Set Speed
	vspeed = -20;

	// Set Gravity Force
	// Disable gravity so the player
	// stays stopped
}