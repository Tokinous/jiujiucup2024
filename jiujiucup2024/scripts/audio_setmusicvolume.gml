///audio_setnewvolume_sound(add_volume)
//
//  change the global sound volume
//
//      add_volume      the volume to adjust
//
//
{
    var add_volume;
    add_volume = argument0;
    //music volume adjusting
    if (add_volume < 0 and global.audio_music_volume > 0) or (add_volume > 0 and global.audio_music_volume < 100) {
        global.audio_music_volume += add_volume ;
        audio_update();
    }
}
