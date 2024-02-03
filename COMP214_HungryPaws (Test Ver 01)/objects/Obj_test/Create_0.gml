//// Set platform dimensions
//var platform_width = 608, platform_height = 167;

//// Set room size
//var room_width = 2160, room_height = 1920;

//// Calculate scale for platforms
//var platform_scale = min(1, display_get_height() / room_height);

//// Calculate scaled platform dimensions
//var scaled_platform_width = platform_width * platform_scale;
//var scaled_platform_height = platform_height * platform_scale;

//// Set up platform instance
//var platform_instance = instance_create(0, 0, obj_platform); // Assuming you have an object named obj_platform

//// Set platform size
//platform_instance.width = scaled_platform_width;
//platform_instance.height = scaled_platform_height;

//// Optionally, you can set the initial position of the platform
//platform_instance.x = room_width / 2 - scaled_platform_width / 2;
//platform_instance.y = room_height / 2 - scaled_platform_height / 2;


var width = 2160, height = 1920, scale = min(1, display_get_height() / 1920);

show_debug_message("Display height: " + string(display_get_height()));
show_debug_message("Resolution scale calculated: " + string(scale));

platform_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);

platform_set_position(display_get_width()/2-(width*scale)/2, display_get_height()/2-(height*scale)/2);
display_set_gui_size(width*scale, height*scale);