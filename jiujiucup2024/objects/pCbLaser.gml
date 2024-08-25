#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 65536;
image_yscale = 0;

alarm[0] = 23;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 1;
image_yscale = 1.25;
image_angle = point_direction(x, y, 400, 304);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag)
{
    image_yscale += (-0.75 - image_yscale) / 15;

    if(image_yscale <= 0)
        instance_destroy();
}
