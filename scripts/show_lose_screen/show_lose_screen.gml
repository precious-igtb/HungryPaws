// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_lose_screen() 
{
if (!instance_exists(Obj_lose)) {
    instance_create_layer(room_width / 2, room_height / 2, "Instances", Obj_lose);
    // You can add code here to play a sound effect
}
}