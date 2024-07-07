#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_p1
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
desIndex = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with p1bspin1
{
    if(split && (0 == id mod 2))
    {
        createMoveOne(x, y, p1brice1, 8, point_direction(400, 304, x, y));
    }
}

with p1brice1
{
    if(speed <= 1)
    {
        flag = 1;
    }
}

alarm[0] = 40;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 5;

screenFlash(2);
with all
{
    if(barragebase == object_get_parent(object_index)
        || p1brice2 == object_index)
    {
        if(speed > 10)
        {
            instance_destroy();
        }

        if(id mod 8 == p1.desIndex)
        {
            speed = 24;
            direction = point_direction(400, 304, x, y);
        }
    }
}

desIndex += 1;
