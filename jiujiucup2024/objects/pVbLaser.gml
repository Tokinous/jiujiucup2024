#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 65536;
image_yscale = 2;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale += (-0.75 - image_yscale) / 15;

if(image_yscale <= 0)
    instance_destroy();
