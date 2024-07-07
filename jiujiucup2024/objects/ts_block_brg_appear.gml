#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

setScale(0.9, 0.9);
SelectColor_ts("cyanine");

image_alpha = 0;

alarm[0]=32;

gDir = 90;

outFlag = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity_direction = gDir;
gravity = 0.4;
speed = random(2);
direction = gDir;

outFlag = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(outFlag)
{
    fadeOut(16);
}
else
{
    fadeIn(16);
}
