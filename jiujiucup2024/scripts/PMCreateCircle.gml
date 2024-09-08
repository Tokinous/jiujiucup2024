///PMCreateCircle(center x, center y, num, dest r, offset, flag, tag)

var centerX, centerY, destR;

centerX = argument0;
centerY = argument1;
destR = argument3;

var num;
num = argument2;

var i, offset, phase, flag;
offset = argument4;
phase = offset;
flag = argument5;

var tag;
tag = argument6;

for(i = 0; i < num; i += 1)
{
    phase += 360 / num;

    var inst, xx, yy;
    xx = CalcCircleX(centerX, centerY, 0, num, i, offset);
    yy = CalcCircleY(centerX, centerY, 0, num, i, offset);

    inst = instance_create(centerX, centerY, pMbCricle);
    inst.centerX = centerX;
    inst.centerY = centerY;
    inst.destR = destR;
    inst.phase = phase;
    inst.phaseSpd = 0.15 * flag;
    inst.tag = tag;
}
