#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
#define Collision_player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(visible && image_alpha>=1)
{
    with player
    {
        if(flash == 0 && curHP != 0)
        {
            curHP -= 1;

            if(curHP <= 0)
            {
                killPlayer();
            }else
            {
                flashObject(1,15);
                audio_playsound(sndDeath);
            }
        }
    }
}
#define Collision_pMPlayer
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(visible && image_alpha>=1)
{
    with other
    {
        if(flash == 0 && curHP != 0)
        {
            with player curHP -= 1;

            if(player.curHP <= 0)
            {
                killPlayer();
            }else
            {
                flashObject(1,15);
                audio_playsound(sndDeath);
            }
        }
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);
