/// @description Execute Code

// In Obj_bee Create Event
speed = 3.5; // Adjust the speed value as needed

chasing_bear = false;

global.collidedBee = false; 

global.timer = 0;

bear_instance = instance_find(Obj_bear, 0);