//PRCreateAsyncCircle

with pRbCircle
{
    var circleNum, rGap;

    circleNum = 5;
    rGap = 128;

    var i;

    for(i = 0; i < circleNum; i += 1)
    {
        var inst;
        inst = instance_create(x, y, pRbCircle2);

        inst.centerX = centerX;
        inst.centerY = centerY;

        inst.destCenterX = destCenterX;
        inst.destCenterY = destCenterY;

        inst.r = r;
        inst.destR = destR - ((circleNum - 1)/2) * rGap + i * rGap;

        inst.phase = phase;
        inst.phaseSpd = phaseSpd * power(-1, i);

        inst.destAsyncPhase = 15 * flag;
        inst.asyncPhaseSpd = 0.25 * (400 - r) / 200 * power(-1, i);
        inst.axisOffset = 2;

        inst.flag = flag;
    }

    instance_destroy();
}
