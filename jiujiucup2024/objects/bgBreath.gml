#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
breathTime = 24 * 4;

color = c_blue;

alpha = 0;

phase = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alpha = sin(degtorad(phase));

phase += 360/breathTime;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(alpha);
draw_set_color(color);

draw_rectangle(
    view_xview[0] - 32, view_yview[0] - 32,
    view_xview[0] + view_wview[0] + 32, view_yview[0] + view_hview[0] + 32,
    0
)

draw_set_color(c_white);
draw_set_alpha(1);
