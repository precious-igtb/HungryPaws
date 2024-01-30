// Speeds
hsp = 0;
vsp = 0;
max_hsp = 15; // max horizontal speed

// Momentum
grav = 0.8;
accel = 4; // acceleration (increase speed)
decel = 2; // deceleration (decrease speed)

// Player inputs
key_jump = 0;
key_jump_held = 0;
key_left = 0;
key_right = 0;

onground = false;
groundbuffer = 3;
jumpspeed = -30;
jumpbuffer = 10;

global.pots_collected = 0;
global.max_pots = 5;
