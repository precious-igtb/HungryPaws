// Creates variable (keyboards)
//key_left = keyboard_check(vk_left);
//key_right = keyboard_check(vk_right);
//key_jump = keyboard_check_pressed(vk_space);
//key_jump_held = keyboard_check(vk_space); // When keeping the space, jumps a bit more

// Get horizontal move direction (-1 left, 1 right)
//var move = key_right - key_left;

// Get horizontal speed
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

////Flipping
//if (hsp != 0)
//{
//image_xscale = sign(hsp);
//}

// JUMPING
//if(jumpbuffer > 0){
	
//	jumpbuffer--;
	
//if(key_jump) and place_meeting(x, y + 1, Obj_platform){ // If space is pressed and the player touches a platform
	
//	vspeed -= 25; //Decrease vertical speed
//	jumpbuffer = 0;
//}
//}

// Gravity
//if(place_free(x, y+ 1)){ // If the place below the player is free (in the air)
//	gravity = 0.5; // Set gravity
//} else { // The player is on the ground
//	gravity = 0;
//	jumpbuffer = 10;
//}

// If the bear moves out of the room, restart the game
//if (y > room_height + 32) or (x > room_width) {
//	room_restart();
//}


// If the bear moves up, other sprites move down
//if(vspeed < 0)
//{
	
//	with(Obj_move_parent)
//	{
//		y += 4;
//	}

//}

// ----------------------------------------------------------------
if(y < room_height / 2)
{
	// And if the player is going upwards
	if(vspeed < 0)
	{
		// Flip its vspeed to create a downward speed
		var downspeed = -vspeed;
	
		// Apply to all children of obj_move_parent
		with(Obj_move_parent) {
		y += downspeed;
		}
		
		y = room_height / 2;
	
	}
}

// Apply touch input on X axis
//target_x += min(abs(touch_input_x), move_speed * 1.2) * sign(touch_input_x);

//// Smoothly interpolate touch input
//// down to 0
//touch_input_x = lerp(touch_input_x, 0, 0.2);