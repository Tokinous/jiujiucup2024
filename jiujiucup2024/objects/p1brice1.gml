#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(0 == flag)
    speed -= 8/40;
else if(1 == flag)
{
    speed += 8/40;
    if(speed >= 8)
    {
        speed = 8;
    }
}
