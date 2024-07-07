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

move = 0;

alpha = 0;

flag = 0;

image_alpha = alpha;

alarm[0] = 59;

outViewDesFlag = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 3;
flag = 1;

/*gravity_direction = direction;
gravity = 0.1;
move = 1;
scale = 3;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha += 1/59;

if(flag)
{
    scale += (-0.5 - scale)/25;

    if(scale <= 0) instance_destroy();

    setScale(scale, scale);

}
