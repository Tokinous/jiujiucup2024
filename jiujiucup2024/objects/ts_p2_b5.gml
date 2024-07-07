#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 0.75;

setScale(scale, scale);

image_speed = 0;

SelectColor_ts("cyanine");

move = 0;

alpha = 0.25;

flag = 0;

image_alpha = alpha;

alarm[0] = 15;

outViewDesFlag = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1;
flag = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag)
{
    scale += (-0.5 - scale)/25;

    if(scale <= 0) instance_destroy();

    setScale(scale, scale);
}

if((x < -32) || (x > 832)
    || (y > view_yview[0] + 608 +32))
{
    instance_destroy();
}
