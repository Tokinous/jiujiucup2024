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

phaseSpd = 0;

r = 0;
destR = 0;

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

param = 70;

if(abs((destPhase - phase)/param) > abs(phaseSpd))
{
    phase += (destPhase - phase)/param;
}
else
{
    destPhase = phase;
    phase += phaseSpd;
}

x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
y = CalcCircleY(centerX, centerY, r, 1, 1, phase);

r += (destR - r) / param;
