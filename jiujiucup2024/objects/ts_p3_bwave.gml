#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
outViewDesFlag = 1;

SelectColor_ts("cyanine");

initX = 0;
initPhase = 0;
phase = 0;
amp = 0;
phaseSpd = 360/66/2;

alarm[0] = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 7;

createShadow(0, 0.05);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destroyByDistance(550);

phase += phaseSpd;

if(0 == initX)
    x = initX + amp*power(sin(degtorad(initPhase + phase)), 3);
else
    x = initX - amp*power(sin(degtorad(initPhase + phase)), 3);
