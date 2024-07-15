//P1SingleArc(centerX, centerY, r, destR, init phase, phase, num, flag, asyncPhase)

var centerX, centerY, r, destR, initPhase, phase, num, asyncPhase;

centerX = argument0;
centerY = argument1;
r = argument2;
destR = argument3;
initPhase = argument4;
phase = argument5;
num = argument6;
flag = argument7;
asyncPhase = argument8;

var i;
i = 0;

for(i = 0; i <= num; i += 1)
{
    var xx, yy;
    xx = CalcArcX(centerX, centerY, r, initPhase, initPhase + endPhase, num, i);
    yy = CalcArcY(centerX, centerY, r, initPhase, initPhase + endPhase, num, i);

    var inst;
    inst = instance_create(xx, yy, p1bCircleOutside);
    inst.r = r;
    inst.destR = destR;
    inst.phaseSpd = 0.3 * flag;
    inst.phase = initPhase + phase * i / num;
    inst.phaseAsync = asyncPhase * flag;

    inst.centerX = 400;
    inst.centerY = 304;
}
