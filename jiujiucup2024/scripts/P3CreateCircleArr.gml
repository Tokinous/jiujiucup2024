//P3CreateCircleArr(centerX, centerY, r offset)

var centerX, centerY, rOffset;
centerX = argument0;
centerY = argument1;
rOffset = argument3;

var circleCount, basicR, rStep;

circleCount = 16;
rStep = 128;
basicR = - circleCount / 2 * rStep + rOffset;

var i;

for(i = 0; i < circleCount; i += 1)
{
    var num, rr, rSpd;
    num = 24;
    rr = basicR + rStep * i;
    //rSpd = rStep * 2 / 46;

    P3CreateCircle(centerX, centerY, rr, num, rSpd);
}
