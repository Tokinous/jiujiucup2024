#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 65536;
image_yscale = 0.01;

image_alpha = 0.3;

destYScale = 0.5;

alarm[0] = 6;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale += (destYScale - image_yscale) / 8;

if(image_yscale <= 0)
    instance_destroy();
