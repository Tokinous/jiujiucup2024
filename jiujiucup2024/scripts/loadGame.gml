{
    var f;
    if !instance_exists(player){
        instance_create(0,0,player);
    }
    //load game
    saveExe();

    //resize screen
    window_set_rectangle(global.initWindowX, global.initWindowY, 800, 608);
}
