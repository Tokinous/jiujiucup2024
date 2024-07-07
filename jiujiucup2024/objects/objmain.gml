#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_main
arg1=0
arg2=0
arg3=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curTime += 1;

if(curTime > global.bestRecord)
{
    global.bestRecord = curTime;
}
