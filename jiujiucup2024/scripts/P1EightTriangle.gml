//P1FiveSquare(obj, offset);

var xx, yy, i, inst, offset, num;

i = 0;
num = 8;
offset = argument1;

for(i = 0; i < num; i += 1)
{
    xx = CalcCircleX(400, 304, 200, num, i, offset);
    yy = CalcCircleY(400, 304, 200, num, i, offset);

    Polygon(xx, yy, 3, 8, 9, argument0, point_direction(xx, yy, 400, 304) + offset * 4);
    Polygon(xx, yy, 3, 8, 2, p1b12, point_direction(xx, yy, 400, 304) + offset * 4 );

    if(i mod 2 == 0)
    {
        var inst;
        inst = instance_create(xx, yy, p1bAnchor);
        inst.index = 2;
        inst.destX = xx;
        inst.destY = yy;
    }
}
