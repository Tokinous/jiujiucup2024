#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=player
*/
if(flash == 0 && curHP != 0){
    curHP -= 1;
    flashObject(1,15);
    audio_playsound(sndDeath);
    if(curHP == 0){
    killPlayer();
    }
}

with(HpBar){
alarm[0]=50
image_alpha=1
}

with(HpBarbg){
alarm[0]=50
image_alpha=0.5
}
