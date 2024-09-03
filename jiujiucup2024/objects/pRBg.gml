#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player depth = other.depth + 1;
with block depth = other.depth + 1;

alpha = 0.8;
flag = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag)
{
    alpha -= 0.8/(1292 - 692);
    if(alpha <= 0)
        instance_destroy();
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black);
draw_set_alpha(alpha);

draw_rectangle(
    view_xview[0] - 32, view_yview[0] - 32,
    view_xview[0] + view_wview[0] + 32, view_yview[0] + view_hview[0] + 32,
    0
)

draw_set_alpha(1);
