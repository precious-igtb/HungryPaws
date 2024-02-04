
// If the platform moves out of the room
if(y > room_height)
{
	// Jump To Point
	// Go to that position
	x = random_range(600, 1600);
	y = -500; 
	

// Get Random Number
var chance = irandom(1);
var width = sprite_width;   // Assuming sprite_width is the width of your sprite
var height = sprite_height; 
//var honey_pots = noone;

if (chance == 1) {
    // Use the only instance of Obj_platform
    var platformInstance = instance_nearest(x, y, Obj_platform); // Find the nearest instance
    if (instance_exists(platformInstance) && platformInstance.sprite_index != -1) {
        var halfWidth = platformInstance.sprite_width / 3;
        var halfHeight = platformInstance.sprite_height / 3;

        var xx = platformInstance.x + random_range(-halfWidth, halfWidth);
        var yy = platformInstance.y - random_range(-halfHeight, halfHeight);  // Adjust the 5 to fit your game
        instance_create_layer(xx, yy, "Spawns", Obj_honey_pot);
    }
}

}