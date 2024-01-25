// Creates variable (keyboards)
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_jump_held = keyboard_check(vk_space); // When keeping the space, jumps a bit more

// Get horizontal move direction (-1 left, 1 right)
var move = key_right - key_left;

// Get horizontal speed
hsp += move * accel;

if (move == 0) // No key or both L and R keys pressed, slow down
{
	if (hsp < 0) // Going left
	{
		hsp = min(hsp + decel, 0) // negative increases to 0
	}
	else // Going right
	{
		hsp = max(hsp - decel, 0) // positive decreases towards 0
	}
	
}

hsp = clamp(hsp, -max_hsp, max_hsp); // Limit horizontal speed
x += hsp; // Update character's x-position

//Flipping
if (hsp != 0)
{
image_xscale = sign(hsp);
}


// Vertical movement
vsp += grav; // Gradually accelerate downwards

// Ground jump
if (jumpbuffer > 0)
{
	jumpbuffer--;
	if(key_jump)
	{
	   jumpbuffer = 0;
	   vsp = jumpspeed;
	}
}

// Vertical collision
if (place_meeting(x, y + vsp, Obj_platform)) // Check if there's a collision with the platform when the character jumps up
{ var onepixel = sign(vsp); // If there's no collision, increase the character's position pixel by pixel
	while(!place_meeting(x, y + onepixel, Obj_platform)) y += onepixel;

	vsp = 0; // When landing on the platform, stop jumping temporarily
}

y = y + vsp; // Update character's y-position

onground = place_meeting(x, y + groundbuffer, Obj_platform);
if(onground) jumpbuffer = 10;


if (y < room_height / 2)
{
if (vsp < 0)
{
	var downspeed = -vsp;
	
	with(Obj_move_parent)
	{
		y += downspeed;
	}

}

}