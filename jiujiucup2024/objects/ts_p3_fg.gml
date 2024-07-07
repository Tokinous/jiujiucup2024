#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
listLightBar = ds_list_create();
loopTime = 66*4;

var i;
for (i = 0; i <= 25; i+=1)
{
    //init light
    ds_list_add(listLightBar, loopTime);
}
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ds_list_destroy(listLightBar);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//alphaTime += 1;

var i;
i = 0;

for(i = 0; i <= 25; i+=1)
{
    var temp;
    temp = ds_list_find_value(listLightBar, i);
    temp += 1;
    ds_list_replace(listLineBar, i, temp);
}

//image_alpha = 0.4 + 0.5*abs(sin(degtorad(alphaTime/loopTime*180)));

//y = view_yview[0];
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

for(i = 0; i <= 25; i+=1)
{
    draw_set_blend_mode(bm_add);

    draw_set_alpha(0.4 + 0.5*abs(sin(degtorad(ds_list_find_value(listLightBar, i)/loopTime*180))));
    draw_line_width_color(16 + 25*i, view_yview[0], 16 + 25*i, view_yview[0] - 128, 32, make_color_rgb(255,255,255), make_color_rgb(0,0,0));

    draw_set_alpha(1);
    draw_set_blend_mode(bm_normal);
}
#define KeyPress_82
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
