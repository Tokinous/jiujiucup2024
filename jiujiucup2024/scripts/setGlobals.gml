{
    //game title
    global.game_title = "I Wanna Walk Along The 3rd Avenue";
    //first room
    global.first_stage = rHub;
    //lite mode (set to true for convenient testing & debugging, set to false when you want release your game)
    //tips : load less music for faster loading
    global.lite_mode = false;
    //if we want to stream music, music volume will be decreased after player's death, but it will not be paused.
    //as a result, the loading of music files will be extremely fast.
    global.stream_music = false;
    //whether enable jump cancelling or not
    global.enable_jump_cancel = false;
    //whether play can switch between fullscreen and window mode or not
    global.enable_fullscreen = true;
    //whether enable keypad or not
    global.enable_keypad = true;
    //whether detect slowmode or not
    global.cheat_detection = false;
    //where to save the game data
    global.saving_directory = working_directory+'\Data\Save\';
    //where to load the music from
    global.music_directory = working_directory+'\Data\Music\';
    //the name of options file
    global.option_file_name = 'options.ini';
    //the password for encryption
    global.password = "Nikaple's";
    // set the spike sprite automaically or not
    // see "playerKiller" and "spikeSprite" for more information
    global.auto_spike_sprite = true;
    // total boss number
    global.boss_number = 8;
    // total item number
    global.item_number = 8;
    
    // current index for base barrage
    global.cur_image_index = 0;
    // current diretion to image_angle
    global.cur_image_scale = 0;
    
    //all random
    global.randomNum = 0;
    
    //debug var
    global.debugVar = 1;
    
    //window info
    global.initWindowX = window_get_x();
    global.initWindowY = window_get_y();
}
