#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(image_xscale > 1)
{
    image_xscale -= 0.25/23;
    image_yscale = image_xscale;
}

if(y > 632)
    instance_destroy();
