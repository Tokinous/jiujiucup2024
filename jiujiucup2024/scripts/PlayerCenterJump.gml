if(keyboard_check_pressed(global.jumpbutton) && !keyboard_check_pressed(ord('P'))){

    //check whether we can first jump
    isFirstJump = place_meeting(x,y,block) || onPlatform ||(place_meeting(x,y+yflag,obj_wall) || r <= 128);
    //first jump
    if(isFirstJump){
        audio_playsound(sndJump);
        rSpd = jump[1];
        //playerVJump
        if(!global.enable_jump_cancel){
            alarm[0] = 1;
        }
        //go to second jump
        curJumps = 2;
    }
    //second jump, (third jump...)
    else{
        if(curJumps == 1 && !isFirstJump){
            curJumps += 1;
        }
        if((curJumps<=maxJumps)){
            //if fall down and jump, make it a second jump
            audio_playsound(sndDJump);
            rSpd = jump[curJumps];
            //playerVJump
            if(!global.enable_jump_cancel){
                alarm[0] = 1;
            }
            //next jump
            curJumps += 1;
            sprite_index = sprPlayerJump;
        }
        //infinite jump
        else if(infJump || place_meeting(x,y,objWater)){
            audio_playsound(sndDJump);
            //this will set the jumping speed to the last jump
            rSpd = jump[maxJumps];
            //playerVJump
            if(!global.enable_jump_cancel){
                alarm[0] = 1;
            }
            curJumps = maxJumps+1;
        }
    }
}
