//P1OutsideArcCircle(initr, destr, flag)

var r, flag, destR;
r = argument0
destR = argument1;
flag = argument2;

var num, i, perPhase;
num = 8;
perPhase = 25;

var numPerArc;
numPerArc = 16;

var asyncPhase;
asyncPhase = random_range(45, 70);

for(i = 0; i < num; i += 1)
{
    P1SingleArc(400, 304, r, destR, 360 * i / num, perPhase, numPerArc, flag, asyncPhase);
}
