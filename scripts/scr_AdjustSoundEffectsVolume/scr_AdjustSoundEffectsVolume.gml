// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_AdjustSoundEffectsVolume() 
{
// scr_AdjustSoundEffectsVolume
/// Adjusts the volume of all sound effects

var num_sounds = sound_get_count();

for (var i = 0; i < num_sounds; i++) {
    var sound_index = sound_get(i);
    audio_sound_gain(sound_index, global.soundEffectsVolume, 0);
}


}
