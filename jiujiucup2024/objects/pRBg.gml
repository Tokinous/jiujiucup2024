#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with player depth = other.depth + 1;
with block depth = other.depth + 1;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_black);
draw_set_alpha(0.8);

draw_rectangle(
    view_xview[0] - 32, view_yview[0] - 32,
    view_xview[0] + view_wview[0] + 32, view_yview[0] + view_hview[0] + 32,
    0
)

draw_set_alpha(1);
