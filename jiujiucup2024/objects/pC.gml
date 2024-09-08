#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_pC_main
arg1=0
arg2=0
arg3=0
*/
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 23;

PCP1();
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 23;
PCP2();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(instance_number(player) == 0)
    instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(GetMainColor());
draw_set_circle_precision(128);
draw_circle(400, 304, 128 - 10, 1);
draw_circle(400, 304, 128 - 11, 1);
draw_circle(400, 304, 128 - 12, 1);
draw_circle(400, 304, 128 - 13, 1);
draw_set_color(c_white);
