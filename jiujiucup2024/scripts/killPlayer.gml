///killPlayer();
//
//  make the player dead
//
//
{
    if(global.god_mode){
        audio_playsound(sndDeath);
        exit;
    }
    //when player isn't selecting difficulty
    if(room != rSelectStage){
        //create death effects
        
        FMODAllStop();
        audio_playmusic(BGM_getdown);
        
        instance_create(player.x,player.y,getdown);
        instance_create(view_xview[0] + view_wview[0] / 2,view_yview[0] + view_hview[0] - 128,GAMEOVER);
        
        //destroy the player and load game
        if(instance_exists(player)){
            with(player){
              instance_destroy();
            }
        }
        global.death += 1;
        saveDeathTime();
    }
    else{
        room_goto(rSelectStage);
        with(player){
            instance_destroy();
        }
    }
}
