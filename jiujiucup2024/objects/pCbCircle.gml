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

deltaDir = 0;

type = 0;

image_xscale = 0.75;
image_yscale = 0.75;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var easeParam;

easeParam = 10;

//centerX += (destCenterX - centerX)/(easeParam / 3);
//centerY += (destCenterY - centerY)/(easeParam / 3);

r += (destR - r)/easeParam;

phase += phaseSpd;

x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
y = CalcCircleY(centerX, centerY, r, 1, 1, phase);
