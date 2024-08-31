#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
SetScale(2, 2);

curObject = 0;

objectRange = 0;

alarm[0] = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;

curObject += 1;
if(curObject > initObject + objectRange)
    curObject = initObject;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = curObject.x;
y = curObject.y;
