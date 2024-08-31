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

r = 0;
destR = 0;

phase = 0;
phaseSpd = 0;

flag = 1;

lastX = 0;
lastY = 0;

deltaDir = 0;

async = 0;
asyncPhase = 0;
destAsyncPhase = 0;
asyncPhaseSpd = 0;
axisOffset = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 23;

var inst;
inst = CreateMoveOne(x, y, pRbCurve, 2, phase);
inst.curve = 0.25 * flag;

flag *= -1;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
deltaDir = point_direction(lastX, lastY, x, y);

var easeParam;

easeParam = 50;

centerX += (destCenterX - centerX)/(easeParam / 3);
centerY += (destCenterY - centerY)/(easeParam / 3);

r += (destR - r)/easeParam;

phase += phaseSpd;

x = CalcCircleXAsync(centerX, centerY, r, 1, 1, phase, asyncPhase);
y = CalcCircleYAsync(centerX, centerY, r, 1, 1, phase, asyncPhase);

lastX = x;
lastY = y;

if(async)
{
    asyncPhase += (destAsyncPhase - asyncPhase)/20;

    if(abs((destAsyncPhase - asyncPhase)/20) < abs(asyncPhaseSpd))
    {
        destAsyncPhase = asyncPhase;
        asyncPhase += asyncPhaseSpd;
    }
}
