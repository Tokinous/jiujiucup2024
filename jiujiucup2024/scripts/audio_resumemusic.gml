///audio_resumemusic(music)
//
//  resumes the current music using global music volume
//
//      music         the music to resume
//
//
{
    if !global.audio_music_muted{
        if FMODInstanceGetPaused(curMusicHandler){
            FMODInstanceSetVolume(curMusicHandler,global.audio_music_volume/100);
            FMODInstanceSetPaused(curMusicHandler,0);
        }
    }
}
