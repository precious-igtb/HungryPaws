//if(place_meeting(x,y, Obj_bear)) {
//	Obj_bear.sprite_index = Spr_player_defeated;
//}

//Obj_bear.sprite_index = Spr_player_defeated;


//if (switch_back_timer > 0) {
//    switch_back_timer--; // Decrease the timer on each step

//    // Check if the bear is colliding with a bee
//    if (place_meeting(x, y, Obj_bee)) {
//        // Set the sprite_index to the desired sprite
//        sprite_index = Spr_player_defeated;


//        // Check if the collision was not processed in the previous step
//        if (!collision_processed) {
//            // Decrease honey pots only once per collision
//            global.pots_collected -= 1; // Decrease honey pots
//		    //play ow sound 
//		    audio_play_sound(snd_ow, 5, false,1);
//            collision_processed = true; // Set the flag to indicate collision processing
//        }
//    }
    
//} else {
//    sprite_index = original_sprite; // Switch back to the original sprite when the timer reaches 0
//    switch_back_timer = fps; // Reset the timer for the next collision
//}


    //// Check if the bee is colliding with a bear
    //if (collision_rectangle(x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 1.5, y + sprite_height / 1.5, Obj_bear, false, true)) {
    //    // Speed up and shake a little bit
    //    //speed = 8; // Adjust the increased speed value
    //    //x += random_range(-1, 1); // Shake horizontally
    //    //y += random_range(-1, 1); // Shake vertically
    //    //post_collision_duration = 30; // Reset the duration
	//global.collidedBee = true; 

    //   } else {
    //    // Continue chasing the bear
    //    direction = point_direction(x, y, bear_instance.x, bear_instance.y);
    //    speed = 8; // Adjust the speed value as needed

    //    x += lengthdir_x(speed, direction);
    //    y += lengthdir_y(speed, direction);
    //}





