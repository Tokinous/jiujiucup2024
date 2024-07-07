#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale = 3;

setScale(scale, scale);

image_speed = 0;

SelectColor_ts("cyanine");

move = 0;
spdScale = 1;

alarm[0] = 59;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity_direction = direction;
gravity = 0.2*spdScale;
move = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
scale += (0.75 - scale)/10;

setScale(scale, scale);

if(move)
{
    createShadow(0, 0.075);

    if(speed >= 8)
        speed = 8;
}
