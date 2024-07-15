#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
centerX = 0;
centerY = 0;

phase = 0;
phaseSpd = 0.5;

phaseAsync = 0;

r = 0;
destR = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
phase += phaseSpd;

phaseAsync += phaseSpd / 2;

r += (destR - r)/20;

if(r < 0)
{
    x = CalcCircleXAsync(centerX, centerY, r, 1, 1, phase, phaseAsync);
    y = CalcCircleYAsync(centerX, centerY, r, 1, 1, phase, phaseAsync);
}
else
{
    x = CalcCircleX(centerX, centerY, r, 1, 1, phase);
    y = CalcCircleY(centerX, centerY, r, 1, 1, phase);
}
