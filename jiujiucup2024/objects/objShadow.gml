#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//this object is created by script 'createShadow'
image_alpha -= alpha_speed;
image_xscale -= scale_speed;
image_yscale = image_xscale;
if(image_alpha<0 || image_xscale<0){
    instance_destroy();
}
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);
