//P1SingleCircle(centerX, centerY, offset);

var num, R, r, centerX, centerY, destCenterX, destCenterY, offset;

centerX = argument0;
centerY = argument1;

offset = argument2;

R = 256;

destCenterX = CalcCircleX(centerX, centerY, R, 1, 1, offset);
destCenterY = CalcCircleY(centerX, centerY, R, 1, 1, offset);

r = 64;

num = 24;

var i;
i = 0;

repeat(num)
{
    var inst, xx, yy, phase;

    phase = 360 / num * i;

    xx = CalcCircleX(centerX, centerY, r, num, i);
    yy = CalcCircleY(centerX, centerY, r, num, i);

    inst = instance_create(xx, yy, p1bCircle);

    inst.r = r;
    inst.destPhase = offset + 180;
    inst.phase = phase + offset + 180;
    inst.centerX = 400;
    inst.centerY = 304;
    inst.destCenterX = destCenterX;
    inst.destCenterY = destCenterY;


    i += 1;
}

i = 0;
num = num / 2;

offset += 60;
destCenterX = CalcCircleX(centerX, centerY, R, 1, 1, offset);
destCenterY = CalcCircleY(centerX, centerY, R, 1, 1, offset);

repeat(num)
{
    var inst, xx, yy, phase;

    phase = 360 / num * i;

    xx = CalcCircleX(centerX, centerY, r, num, i);
    yy = CalcCircleY(centerX, centerY, r, num, i);

    var inst2;
    inst2 = instance_create(xx, yy, p1bCircle);
    inst2.type = 1;

    inst2.r = r;
    inst2.destPhase = phase + offset + 90;
    inst2.phase = phase + offset;
    inst2.centerX = 400;
    inst2.centerY = 304;
    inst2.destCenterX = destCenterX;
    inst2.destCenterY = destCenterY;

    i += 1;
}
