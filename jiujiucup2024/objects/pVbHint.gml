#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.5;

SetScale(3, 3);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale -= 0.1;
image_yscale -= 0.1;

if(image_xscale <= 0)
{
    instance_destroy();
}

speed *= 0.8;
