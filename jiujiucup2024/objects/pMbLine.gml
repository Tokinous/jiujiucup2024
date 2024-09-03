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
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 1;
SetScale(2, 2)
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
        image_alpha = 1;
        flag = 0;
        SetScale(1, 1);
    }
}

x += (destX - x)/3.5;
y += (destY - y)/3.5;
