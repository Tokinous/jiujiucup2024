#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
centerX = 0;
centerY = 0;

destCenterX = 0;
destCenterY = 0;

phase = 0;
destPhase = 0;

r = 0;

type = 0;

alarm[0] = 12;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var param;

param = 20;

centerX += (destCenterX - centerX)/param;
centerY += (destCenterY - centerY)/param;

if(flag == 1)
{
    phase += (destPhase - phase)/param;

    if(abs(destPhase - phase)/param <= 1 && type == 0)
        instance_destroy();
}

x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
y = CalcCircleY(centerX, centerY, r, 1, 1, phase);

if(1 == type)
{
    r -= 2;
}
#define Other_40
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
