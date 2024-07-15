#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destX = 0;
destY = 0;

flag = 0;

index = 0;

arr_anchor = 0;
arr_i = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (0 == flag)
{
    x += (destX - x) / 20;
    y += (destY - y) / 20;
}

if(image_alpha >= 0)
{
    image_alpha += (-0.1 - image_alpha)/20;
}

if(image_xscale > 1)
{
    image_xscale += (1 - image_xscale)/20;
    SetScale(image_xscale, image_xscale);
}
