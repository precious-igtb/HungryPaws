	// Check if Obj_how2play_pages.currentPage is 3
if (Obj_how2play_pages.currentPage == 3) {
    // Set image_blend to white with full alpha (no transparency)
    image_blend = make_color_rgb(255, 255, 255);
    // Set image_alpha to 0 (fully transparent)
    image_alpha = 0;
} else {
    // Reset image_blend to default color (no tint) and image_alpha to default alpha (fully opaque)
    image_blend = c_white;
    image_alpha = 1.0;
}