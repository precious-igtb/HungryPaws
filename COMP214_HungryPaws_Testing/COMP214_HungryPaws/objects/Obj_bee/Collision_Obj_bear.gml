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

