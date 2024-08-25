#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
dir = 0;

image_alpha = 0.5;

SetScale(2.75, 2.75);

destScale = 1;

alarm[0] = 23;
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
image_xscale += (destScale - image_xscale) / 10;
image_yscale += (destScale - image_yscale) / 10;

if(image_xscale < 0)
{
    instance_destroy();
}
