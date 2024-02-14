/// @description Execute Code
// obj_left_button Mouse Left Button Down Event
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Decrease the current page when the left button is clicked
    Obj_how2play_pages.currentPage = max(0, Obj_how2play_pages.currentPage - 1);
	
	// Make the button color darker
    image_blend = darker_blend;

    // Set an alarm to reset the button color after a delay (e.g., 30 steps)
    alarm[0] = 15;
	
	
}