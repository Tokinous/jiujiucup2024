#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();
outViewDesFlag = 1;

SelectColor_ts("white");

fadeout = 0;

alarm[0] = 117;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
SelectColor_ts("cyanine");
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
destroyByDistance(550);

if(fadeout)
    fadeOut(10);
