//P3CreateCircle(centerX, centerY, r, num, rSpd)

var centerX, centerY, r, num, rSpd;
centerX = argument0;
centerY = argument1;
r = argument2;
num = argument3;
rSpd = argument4;

var phase, i;
phase = random(360);

for(i = 0; i < num; i += 1)
{
    phase += 360 / num;

    var inst, xx, yy;

    xx = CalcCircleX(centerX, centerY, r, 1, 1, phase);
    yy = CalcCircleY(centerX, centerY, r, 1, 1, phase);

    inst = instance_create(xx, yy, p3bCircle)
    inst.centerX = centerX;
    inst.centerY = centerY;
    inst.r = r;
    inst.phase = phase;
    inst.rSpd = rSpd;
    inst.image_alpha = 0.25;
}
