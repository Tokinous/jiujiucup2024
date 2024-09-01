#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_pM_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
index = 0;

//60, 20, 50, 90
partOffset = choose(60, 20, 50, 90);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(index mod 2 == 0)
{
    alarm[0] = 12;
}
else
{
    alarm[0] = 11;
}

PMP1(index);

index += 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(index mod 2 == 0)
{
    alarm[1] = 12;
}
else
{
    alarm[1] = 11;
}

PMP2(index);

index += 1;
