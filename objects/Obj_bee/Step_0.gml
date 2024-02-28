

var bear_instance = instance_find(Obj_bear, 0);

if (bear_instance && !chasing_bear) {
    direction = point_direction(x, y, bear_instance.x, bear_instance.y);
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);

    chasing_bear = true; // Set the flag to indicate that this bee is now chasing the bear
}

// Reset the chasing flag when the bee reaches the bear or loses sight
if (chasing_bear && bear_instance && point_distance(x, y, bear_instance.x, bear_instance.y) < 10) {
    chasing_bear = false; // Reset the flag when the bee is close to the bear
}


// Check if the bee is colliding with a bear within the collision rectangle and is very close
if (collision_rectangle(x , y , x + sprite_width - 0.25, y + sprite_height - 0.25, Obj_bear, false, true)) {
    // Speed up and shake a little bit
    global.collidedBee = true;
    speed = 8; 
}





