#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.35;

flag = 0;

destX = 0;
destY = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag)
{
    image_alpha = 1;

    image_xscale += (-0.75 - image_xscale) / 10;
    image_yscale = image_xscale;

    if(image_xscale <= 0)
    {
        instance_destroy();
    }
}

x += (destX - x)/10;
y += (destY - y)/10;
