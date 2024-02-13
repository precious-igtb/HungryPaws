/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2246951A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// obj_right_button Mouse Left Button Down Event$(13_10)if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {$(13_10)    // Increase the current page when the right button is clicked$(13_10)   Obj_how2play_pages.currentPage = min(3, Obj_how2play_pages.currentPage + 1); // Assuming you have 4 pages (0 to 3).$(13_10)   $(13_10)   	// Make the button color darker$(13_10)    image_blend = darker_blend;$(13_10)$(13_10)    // Set an alarm to reset the button color after a delay (e.g., 30 steps)$(13_10)    alarm[0] = 15;$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
// obj_right_button Mouse Left Button Down Event
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
    // Increase the current page when the right button is clicked
   Obj_how2play_pages.currentPage = min(3, Obj_how2play_pages.currentPage + 1); // Assuming you have 4 pages (0 to 3).
   
   	// Make the button color darker
    image_blend = darker_blend;

    // Set an alarm to reset the button color after a delay (e.g., 30 steps)
    alarm[0] = 15;
}