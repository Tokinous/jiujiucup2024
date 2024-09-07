///PCUCreateArc(R)

var destR;

destR = argument0;

var num, i, phase;

var arcNum;
arcNum = 8;

num = 64;
phase = random(360);

for(i = 0; i < num; i += 1)
{
    phase += 360 / num;

    var inst;
    inst = instance_create(400, 304, pCbCircle);
    inst.r = 0;
    inst.destR = destR;
    inst.phase = phase
    inst.phaseSpd = 0.4 * power(-1, i);
}
