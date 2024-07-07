///audio_playmusic(music)
//
//  plays the music using global music volume
//
//      music         the music to play
//
//
{
    if(argument0 <= 0){
        exit;
    }
    if(curMusic != argument0 and !global.audio_music_muted){
        FMODInstanceStop(curMusicHandler);
        curMusic = argument0;
        curMusicHandler = FMODGetSoundHandler(curMusic);
        if !global.audio_music_muted{
            if !FMODInstanceIsPlaying(curMusicHandler){
                FMODInstanceSetVolume(curMusicHandler,global.audio_music_volume/100);
                curMusicHandler = FMODSoundPlay(curMusic);
                variable_global_set('__' + string(curMusic) + '_handler',curMusicHandler);
            }
        }
    }
}
