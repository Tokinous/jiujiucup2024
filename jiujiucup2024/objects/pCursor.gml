#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_pCursor_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
index = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
PCUCreateCircle(index * 47);

index += 1;

alarm[0] = 23;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with (pCUbLine2)
{
    instance_create(x, y, pCUbScale);
    instance_destroy();
}

PCUCreateLine(index * 100);

index += 1;

alarm[1] = 23;
