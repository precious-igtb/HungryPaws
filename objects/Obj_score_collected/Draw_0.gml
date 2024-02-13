// Set the size and position of the bar

var bar_x = Obj_score_collected.x - 210; // X coordinate of the bar

var bar_y = Obj_score_collected.y - 62; // Y coordinate of the bar

var bar_width = 425; // Width of the bar

var bar_height = 120; // Height of the bar

 

// Calculate the length of the bar based on the current score

var score_percent = clamp(global.pots_collected / 20, 0, 1);  // Convert the score to a percentage between 0 and 1

var current_bar_width = score_percent * bar_width;

 

// Draw the overall bar

draw_set_color(c_maroon); // Color of the entire bar

draw_roundrect(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

 

// Draw the bar based on the current score

draw_set_color(c_orange); // Color of the bar based on the current score

draw_roundrect(bar_x, bar_y, bar_x + current_bar_width, bar_y + bar_height, false);

 

// Draw the score text

draw_self(); // Preserve what was previously drawn

 

//draw_set_font(fnt_score);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

 

draw_set_color(c_white); // Color of the text

//draw_text(x, y, string(global.pots_collected));
/**
draw_self();

draw_set_font(fnt_score);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour($FF003F7F & $ffffff);
var l51EE9C25_0=($FF003F7F >> 24);
draw_set_alpha(l51EE9C25_0 / $ff);

draw_text(x + 0, y + 0,  + string(global.pots_collected));