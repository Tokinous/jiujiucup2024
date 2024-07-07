#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 0;

time = 0;

image_xscale = 65535;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale -= scale/time;

if(image_yscale <= 0)
    instance_destroy();
