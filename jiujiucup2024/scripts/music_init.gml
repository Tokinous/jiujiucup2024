///initializing music at the beginning of the game
globalvar BGM_Ad;
BGM_Ad = FMODSoundAdd(global.music_directory + 'avo.ogg',0,0);
FMODSoundSetMaxVolume(BGM_Ad,1);
