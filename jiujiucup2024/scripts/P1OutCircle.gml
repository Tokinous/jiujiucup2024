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
    inst.type = 2;

    inst.r = r;
    inst.destR =
    inst.destPhase = offset + 180;
    inst.phase = phase + offset + 180;

    inst.centerX = 400;
    inst.centerY = 304;
    inst.destCenterX = 400;
    inst.destCenterY = 304;

    i += 1;
}
