//PRCreateCircle

var num, initCenterX, initCenterY, initR;

num = 64;
initCenterX = 400;
initCenterY = 608 + 128;
initR = 32;

var i, phase;
phase = random(360);

for(i = 0; i < num ; i += 1)
{
    phase += 360 / num;

    var xx, yy, inst;

    xx = CalcCircleX(initCenterX, initCenterY, initR, 1, 1, phase);
    yy = CalcCircleY(initCenterX, initCenterY, initR, 1, 1, phase);

    inst = instance_create(xx, yy, pRbCircle);

    inst.centerX = initCenterX;
    inst.centerY = initCenterY;
    inst.destCenterX = 400;
    inst.destCenterY = 304;
    inst.r = initR;
    inst.destR = 160;
    inst.phase = phase;
    inst.phaseSpd = 0.4;
    inst.alarm[0] = 46;
}
