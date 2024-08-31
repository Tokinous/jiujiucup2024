//PVP2(index)
/*
with pVbStop
{
    if(speed <= 0)
    {
        speed = tempSpd / 3;
        direction = random(360);
    }
}
*/

Polygon(player.x, player.y, 8, 16, 2, pVbHint, random(360));

var i, num;
num = 5;
i = argument0
r = i * 48 + 128;

var initPhase;
initPhase = (i mod 2) * 90;

var j;
for(j = 0; j < num; j += 1)
{
    var xx, yy;
    xx = CalcCircleX(400, 304, r, num, j, initPhase);
    yy = CalcCircleY(400, 304, r, num, j, initPhase);

    Polygon(xx, yy, 4, 5.5, 6, pVbStop, point_direction(xx, yy, 400, 304));
}
