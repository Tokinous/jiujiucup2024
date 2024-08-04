#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
centerX = 400;
centerY = 304;

phase = 90;

r = 96;

alarm[0] = 26;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 26;

Polygon(x, y, 16, random_range(6, 8), 2, p2bCurveToStraight, random(360));
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = CalcCircleX(centerX, centerY, r, 1, 1, phase + view_angle[0]);
y = CalcCircleX(centerX, centerY, r, 1, 1, phase + view_angle[0]);
