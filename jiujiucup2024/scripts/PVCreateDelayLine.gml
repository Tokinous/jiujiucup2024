//PVCreateDelayLine(centerX, centerY, direction, type);

var centerX, centerY, lineDirection, type;

centerX = argument0;
centerY = argument1;
lineDirection = argument2;
type = argument3;

var initNum;

initNum = 75;

var i, originX, destX, originY, destY, distance, lineNum, gap;
gap = 24;

originX = centerX - 25*gap*cos(degtorad(lineDirection));
originY = centerY - 25*gap*sin(degtorad(lineDirection));

destX = centerX + 25*gap*cos(degtorad(lineDirection));
destY = centerY + 25*gap*sin(degtorad(lineDirection));

distance = point_distance(originX, originY, destX, destY);
lineNum = distance div gap + 1;

var dir, dirSpd;
dir = random(360);
dirSpd = random_range(26, 26*2);

for(i = 0; i < initNum; i += 1)
{
    var xx, yy;
    xx = CalcLineX(originX, destX, lineNum, i);
    yy = CalcLineY(originY, destY, lineNum, i);

    if(xx > 800 || xx < 0 || y < 0 || y > 800)
        continue;

    var inst;
    inst = instance_create(xx, yy, pVbDelay);
    //inst.alarm[0] = 12;
    inst.alarm[1] = 12;
    inst.type = type;
    //inst.dir = dir + dirSpd*i;
    //inst.dir = random(360);
    //inst.dir = point_direction(xx, yy, player.x, player.y);
}
