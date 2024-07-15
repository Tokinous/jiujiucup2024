#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
lastTime = 0;
alpha = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha += 1/lastTime;

if(alpha > 1)
    instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_white);
draw_set_alpha(alpha);

draw_rectangle(
    view_xview[0] - 32, view_yview[0] - 32,
    view_xview[0] + view_wview[0] + 32, view_yview[0] + view_hview[0] + 32,
    0
)

draw_set_alpha(1);
