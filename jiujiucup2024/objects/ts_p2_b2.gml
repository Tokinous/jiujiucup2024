#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 0.75;

setScale(scale, scale);

image_speed = 0;

SelectColor_ts("white");
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale -= 0.75/100;

setScale(scale, scale);

if(scale <= 0)
{
    instance_destroy();
}
