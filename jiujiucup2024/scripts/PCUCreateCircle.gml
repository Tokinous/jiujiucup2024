///PCUCreateCircle(destR)

var destR;

destR = argument0;

var num, i, phase;

num = 64;
phase = random(360);

var flag;
flag = choose(-1, 1);

for(i = 0; i < num; i += 1)
{
    phase += 360 / num;

    var inst;
    inst = instance_create(400, 304, pCbCircle);
    inst.r = 0;
    inst.centerX = 400;
    inst.centerY = 304;
    inst.destR = destR;
    inst.phase = phase;
    inst.phaseSpd = 0.4 * flag;
}
