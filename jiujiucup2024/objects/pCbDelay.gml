#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dir = 0;

image_alpha = 0.3;

SetScale(2.75, 2.75);
scale = 2.75
destScale = 1;

alarm[0] = 12;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
SetScale(2.75, 2.75);
destScale = -0.1;
image_alpha = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale += (destScale - scale) / 10;
SetScale(scale, scale);

if(scale <= 0)
{
    instance_destroy();
}
