#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=59;

blockDesX = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with block
{
    if (x= ts_p2_bldes.blockDesX)
    {
        BlockDisappear();
    }
}
instance_destroy();
