#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=305
applies_to=self
invert=0
arg0=tl_p2_main
arg1=0
arg2=0
arg3=0
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
flag = 0;
radiumToPlayer = 0;

curve = 0;
curveBase = 0;
curveFlag = choose(-1, 1);

alarm[0] = 23;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(flag != 1)
{
    flag = 1;

    radiumToPlayer = 0;
    alarm[0] = 23;

}
else
{
    var offset;
    offset = random(360);

    var i, num;
    num = 24;

    for(i = 0; i < num; i += 1)
    {
        var xx, yy;
        xx = CalcCircleX(400, 128, radiumToPlayer, num, i, offset);
        yy = CalcCircleY(400, 128, radiumToPlayer, num, i, offset);

        var inst;
        inst = instance_create(xx, yy, p2bCurve);

        inst.speed = 10;
        inst.direction = point_direction(400, 128, xx, yy);

    }

    radiumToPlayer = 0;
    alarm[0] = 23;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
curve = curveBase * curveFlag;

if(flag)
{
    radiumToPlayer += 10;
    P2GenerateCircleToPlayer(radiumToPlayer);
}
