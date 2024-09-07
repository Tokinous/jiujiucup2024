#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 65536;
image_yscale = 1.25;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha += (-0.75 - image_alpha) / 15;

if(image_alpha <= 0)
    instance_destroy();
