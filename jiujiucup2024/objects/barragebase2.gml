#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=0
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
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode_ext(bm_inv_dest_color, bm_zero);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
draw_set_blend_mode(bm_normal);
