//PRCreateAsyncCircle

global.temp = irandom(4);

with pRbCircle
{
    var circleNum, rGap;

    circleNum = 7;
    rGap = 120;

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
        inst.phaseSpd = abs(phaseSpd) * power(-1, i);

        inst.destAsyncPhase = 15 * flag;
        inst.asyncPhaseSpd = 0.25 * (400 - r) / 200 * power(-1, i);
        inst.axisOffset = 2;

        inst.flag = flag;
        inst.xoffFlag = power(-1, i);
        inst.type = (r div 40 + i + 4 + global.temp) mod 4;

        //if(id mod 60 == 0 && i >= 2 && i <= 4)
        if(id mod 20 == 0 &&  i >= 1 && i <= 3)
        {
            inst.tag = 1;
            inst.destScale = 2.5;
        }
    }

    instance_destroy();
}
