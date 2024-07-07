#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed += (0 - speed)/10;

if(speed <= 0.5)
{
    var scale;
    scale = image_xscale;

    scale += (0 - scale)/10;
    SetScale(scale, scale);

    if(scale <= 0.1)
        instance_destroy();
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
