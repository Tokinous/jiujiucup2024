#define Mouse_50
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if mouse_x > x and mouse_x < x+sprite_width
    and mouse_y > y and mouse_y < y+sprite_height
{
    global.audio_music_volume = floor(100*(mouse_x - x)/sprite_width) ;
    audio_update();
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_part_ext(sprite_index,image_index,0,0,sprite_width*global.audio_music_volume/100,sprite_height,x,y,image_xscale,image_yscale,image_blend,image_alpha)
