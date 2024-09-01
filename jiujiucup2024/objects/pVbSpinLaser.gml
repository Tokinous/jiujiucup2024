#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.3;

image_xscale = 65536;

image_yscale = 2;

destAngle = 0;
flag = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += (destAngle - image_angle) / 3.5;

if(flag)
{
    image_alpha = 1;

    image_yscale += (-0.75 - image_yscale) / 10;

    if(image_yscale <= 0)
        instance_destroy();
}
