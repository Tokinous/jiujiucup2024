#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

outViewDesFlag = 1;

move = 1;

SelectColor_ts("cyanine");
setScale(0.75, 0.75);

alarm[0] = 30;

initX = x;
initY = y;

flag = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 59;

speed = 8;
move = 1;

direction = point_direction(400, view_yview[0] + 128, x, y) + 30*flag;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(move)
{
    speed *= 0.95;
    //createShadow(0, 0.1);
}

if(speed <= 0.1)
{
    move = 0;
    speed = 0;
}

destroyByDistance(600);
