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

x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
y = CalcCircleY(centerX, centerY, r, 1, 1, phase);

lastX = x;
lastY = y;
