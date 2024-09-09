///PCUCreateCircle(destR, index)

var destR, index;

destR = argument0;
index = argument1;

var num, i, phase;

num = 64;
phase = random(360);

var flag;
flag = choose(-1, 1);

for(i = 0; i < num; i += 1)
{
    phase += 360 / num;

    var inst;
    if(index mod 2 == 0)
    {
        inst = instance_create(400, 304, pCbCircle);
    }
    else
    {
        inst = instance_create(-32, -32, pCbCircle);
    }

    inst.centerX = 400;
    inst.centerY = 304;

    if(index mod 2 == 1)
    {
        inst.r = 514;

        if(index div 2 == 0)
            inst.destR = 400;
        else
            inst.destR = (5 - (index div 2)) * power(1.2, (5 - (index div 2))) * 32 + 32;
    }
    else
    {
        inst.r = 0;
        inst.destR = (index div 2) * power(1.2, (index div 2)) * 32 + 32;
    }

    inst.phase = phase;
    inst.phaseSpd = 0.4 * flag;
}
