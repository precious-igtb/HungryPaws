//vspeed = -25;

//// Speeds
//hsp = 0; // Horizontal speed
//max_hsp = 20; // max horizontal speed

//// Momentum
//accel = 10; // acceleration (increase speed)
//decel = 10; // deceleration (decrease speed)

//// Player inputs
//key_jump = 0;
//key_jump_held = 0;
//key_left = 0;
//key_right = 0;

//jumpbuffer = 5;

hsp = 0; 
vsp = 0; 
grv = 1.5;
walksp = 16; 
jumpbuffer = 0; 

//Collectibles
global.pots_collected = 0;

global.platforms_jumped = 0;

//to control the frequency of the bees randomly appearing 
global.bee_spawn_timer = 0;

original_sprite = sprite_index; // Store the original sprite
switch_back_timer = fps_real; // Set the timer value 
collision_processed = false;


global.icicles_enabled = false;
global.icicle_spawn_timer = 0;

global.lastCollidedBee = noone; // Initialize the variable
