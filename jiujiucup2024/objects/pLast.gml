#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_pLast_main_2
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
if(index mod 2 == 0)
{
    alarm[0] = 11;
    with pMbCricle
    {
        if(tag == 1)
            flag = 1;
    }
    PMCreateCircleArr(400, 304, (10 - index div 2) * 40, random(360), power(-1 ,(index div 2)), 1);
    PMCreateCircle(400, 304, 40 + (10 - index div 2) * 32, (10 - index div 2) * 40, random(360), power(-1 ,(index div 2)), 1);
}
else
{
    alarm[0] = 12;
    PMP2((index div 2), 23);
}

index += 1;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(index mod 2 == 0)
{
    alarm[1] = 11;
}
else
{
    alarm[1] = 12;
}

PCCreateRandomStar(9, index * 50, choose(2, 3), 20, random(360), pCbDelay);

index += 1;
