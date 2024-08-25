#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
centerX = 0;
centerY = 0;

phase = 0;
phaseSpd = 0;

r = 0;
rSpd = 0;

flag = 0;
basicPhase = 0;
deltaPhase = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
y = CalcCircleY(centerX, centerY, r, 1, 1, phase);

r += rSpd;

if(r <= 0)
    visible = 0;
else
    visible = 1;

if(flag)
{
    deltaPhase = 270 - view_angle[0];
    phase = basicPhase + deltaPhase;
}
else
{
    phase += phaseSpd;
}
