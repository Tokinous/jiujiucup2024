///audio_togglesoundmuted()
//
//  toggle music on/off
{
    global.audio_music_muted = !global.audio_music_muted;
    //stop the music
    if global.audio_music_muted{
        FMODInstanceStop(curMusicHandler);
        curMusic = BGM_Null;
        curMusicHandler = FMODSoundPlay(curMusic);
        global.paused = 0;
    }
    else{
    //play music instantly
        musicFunctions();
    }
    audio_update();
}
