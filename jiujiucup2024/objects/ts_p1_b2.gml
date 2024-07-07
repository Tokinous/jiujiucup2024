#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destScale = random_range(0.25, 0.75);

//if(id mod 16 == 0)
//{
//    destScale = -0.1;
//}

scale = 0.75;

setScale(scale, scale);

image_speed = 0;

SelectColor_ts("cyanine");

endFlag = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale += (destScale - scale)/100;

if(scale <= 0)
    instance_destroy();

setScale(scale, scale);

if (endFlag)
{
    fadeOut(30);
}
