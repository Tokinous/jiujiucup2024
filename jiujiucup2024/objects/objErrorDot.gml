#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surf = surface_create(800, 608);
isRedraw = false;

num=10;

alarm[0]=1;

list_top=ds_list_create();
list_left=ds_list_create();
list_targetX=ds_list_create();
list_targetY=ds_list_create();

alarm[1]=2;

t=70;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (surface_exists(surf))
    surface_free(surf);

ds_list_destroy(list_top);
ds_list_destroy(list_left);
ds_list_destroy(list_targetX);
ds_list_destroy(list_targetY);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=t;

ds_list_clear(list_top);
ds_list_clear(list_left);
ds_list_clear(list_targetX);
ds_list_clear(list_targetY);

repeat(num)ds_list_add(list_top,random(800));
repeat(num)ds_list_add(list_left,random(608));
repeat(num)ds_list_add(list_targetX,random(800));
repeat(num)ds_list_add(list_targetY,random(608));
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!surface_exists(surf))
    surf = surface_create(800,608);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
isRedraw = true;
screen_redraw();
isRedraw = false;
surface_reset_target();

f+=0.1;
#define Other_5
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
var i;
if (!isRedraw)
{
    draw_set_blend_mode_ext(bm_one, bm_zero);
    for(i=0;i<num;i+=1){
        draw_surface_part_ext(surf,
        ds_list_find_value(list_left,i),
        ds_list_find_value(list_top,i),
        16,8,
        ds_list_find_value(list_targetX,i),
        ds_list_find_value(list_targetY,i),
        1,1,c_white,0);
    }
    draw_set_blend_mode(bm_normal);
}
