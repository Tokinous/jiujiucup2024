///audio_stopmusic()
//
// stop the current music
//
{
    FMODInstanceStop(curMusicHandler);
    curMusic = BGM_Null;
    curMusicHandler = FMODGetSoundHandler(curMusic);
}
