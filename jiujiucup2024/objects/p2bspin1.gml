#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
split = 0;

r = 128;
spinSpd = 0;
phase = 0;

spin = 1;

OutViewDontDestroy();

alarm[0] = 10;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed = 6;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(1 == spin)
{
    x = 400 + r*cos(degtorad(phase));
    y = 304 - r*sin(degtorad(phase));

    phase += spinSpd;
}
