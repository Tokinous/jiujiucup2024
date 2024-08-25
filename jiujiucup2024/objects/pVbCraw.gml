#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
deltaY = 0;
destDeltaY = 608 - 16;

alarm[0] = 23;

alarm[1] = 23 * 4;

flag = 0;


initY = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//speed /= 2;
speed = 0;
direction = 90;
flag = 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 800 / (26 * 4);
flag = 2;
direction = 90;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag == 2 && y < 0)
    instance_destroy();
else if(flag == 1)
{
    //deltaY += (destDeltaY - deltaY) / 10;
    //y = initY + deltaY;
}
